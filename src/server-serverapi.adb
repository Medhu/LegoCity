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
with Server.Server;

package body Server.ServerAPI is

   Verbose : constant Boolean := False;

   procedure Init is
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerAPI.Init - enter");
      end if;

      Server.Init;

      if Verbose then
         Text_IO.Put_Line ("Client.ServerAPI.Init - exit");
      end if;

   end Init;

   procedure Start is
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerAPI.Start - enter");
      end if;

      Server.Start;

      if Verbose then
         Text_IO.Put_Line ("Server.ServerAPI.Start - exit");
      end if;
   end Start;

   procedure Run is
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerAPI.Run - enter");
      end if;

      Server.Run;

      if Verbose then
         Text_IO.Put_Line ("Server.ServerAPI.Run - exit");
      end if;
   end Run;

   procedure Stop is
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerAPI.Stop - enter");
      end if;

      Server.Stop;

      if Verbose then
         Text_IO.Put_Line ("Server.ServerAPI.Stop - exit");
      end if;
   end Stop;

   procedure Light
     (P_Light_Id     : in Natural;
      P_Light_Status : in Type_Light_Status)
   is
      use Server;
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerAPI.Light - enter");
      end if;

      if Server.Game_Engine = null then
         raise Game_Engine_Doesnt_Exists;
      else
         Server.Game_Engine.Entry_Light (P_Light_Id, P_Light_Status);
      end if;
      if Verbose then
         Text_IO.Put_Line ("Server.ServerAPI.Light - exit");
      end if;
   end Light;

end Server.ServerAPI;
