--
--
--      Life in LegoCity
--      Copyright (C) 2018 Frank J Jorgensen
--
--      This program is free software: you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation, either version 3 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program.  If not, see <http://www.gnu.org/licenses/>.
--

with Text_IO;
with Ada.Real_Time;

package body Server.Server is

   Verbose : constant Boolean := True;

   type Type_Light_List is array (1 .. 5) of Type_Light_Status;
   task body Type_Game_Engine is

      New_All_Lights,
      Prev_All_Lights : Type_Light_List :=
        (others => Light_Off);
      A_File : Text_IO.File_Type;

      Run : Boolean := True;
   begin
      Text_IO.Create (A_File, Text_IO.Out_File, "Server.txt");

      accept Entry_Start do
         Run := True;
      end Entry_Start;

      Text_IO.Put_Line ("Started server");

      while Run loop

         select
            accept Entry_Stop do
               Run := False;
            end Entry_Stop;
         or
            accept Entry_Light
              (P_Light_Id     : in Natural;
               P_Light_Status : in Type_Light_Status) do
               New_All_Lights (P_Light_Id) := P_Light_Status;
            end Entry_Light;
         else
            null;
         end select;

         for Trav_Light in New_All_Lights'First .. New_All_Lights'Last loop
            if New_All_Lights (Trav_Light) /= Prev_All_Lights (Trav_Light) then
               Text_IO.Put_Line
                 (A_File,
                  "Turn light " &
                  Trav_Light'Img &
                  " from " &
                  Prev_All_Lights (Trav_Light)'Img &
                  " to " &
                  New_All_Lights (Trav_Light)'Img);
               Prev_All_Lights (Trav_Light) := New_All_Lights (Trav_Light);
            end if;

         end loop;

      end loop;

      Text_IO.Close (A_File);
   end Type_Game_Engine;

   procedure Init is

   begin
      if Verbose then
         Text_IO.Put_Line ("Server.Server.Init - enter");
      end if;

      Text_IO.Put_Line
        ("LSS Server - v0.0.1 Copyright (C) 2018 Frank J Jorgensen");
      Text_IO.Put_Line
        ("This program comes with ABSOLUTELY NO WARRANTY; for details see attached gpl.txt");
      Text_IO.Put_Line ("or <http://www.gnu.org/licenses/>");
      Text_IO.Put_Line
        ("This is free software, and you are welcome to redistribute it");
      Text_IO.Put_Line ("under certain conditions; see attached file gpl.txt");
      Text_IO.Put_Line ("or <http://www.gnu.org/licenses/>");
      Text_IO.New_Line;
      Text_IO.New_Line;

      if Verbose then
         Text_IO.Put_Line ("Server.Server.Init - exit");
      end if;
   end Init;

   procedure Start is
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.Server.Start - enter");
      end if;

      if Game_Engine = null then
         Game_Engine := new Type_Game_Engine;
         Game_Engine.Entry_Start;
      end if;

      if Verbose then
         Text_IO.Put_Line ("Server.Server.Start - exit");
      end if;
   end Start;

   procedure Stop is
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.Server.Stop - enter");
      end if;

      if Game_Engine /= null then
         Server.Game_Engine.Entry_Stop;
         Server.Game_Engine_Free (Server.Game_Engine);
      else
         raise Game_Engine_Doesnt_Exists;
      end if;

      if Verbose then
         Text_IO.Put_Line ("Server.Server.Stop - exit");
      end if;
   end Stop;

   procedure Run is
      Run        : Boolean := True;
      A_Char     : Character;
      Char_Avail : Boolean;

   begin
      while Run loop
         Text_IO.Get_Immediate (A_Char, Char_Avail);
         if Char_Avail then

            if A_Char = '0' then
               Run := False;
            end if;
         end if;
         delay 0.0;

      end loop;

   end Run;

end Server.Server;
