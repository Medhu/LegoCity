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

package body Server.ServerRAPI is

   Verbose : constant Boolean := True;

   procedure Init is
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerRAPI.Init - enter");
      end if;

      Text_IO.Put_Line ("PolyORB Communication");

      if Verbose then
         Text_IO.Put_Line ("Server.ServerRAPI.Init - exit");
      end if;
   end Init;

   procedure Start is
      use Server;
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerRAPI.Start - enter");
      end if;

      if Server.Game_Engine /= null then
         raise Game_Engine_Exists;
      else
         Server.Start;
      end if;

      if Verbose then
         Text_IO.Put_Line ("Server.ServerRAPI.Start - exit");
      end if;
   end Start;

   procedure Stop is
      use Server;
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerRAPI.Stop - enter");
      end if;

      if Server.Game_Engine = null then
         raise Game_Engine_Doesnt_Exists;
      else
         Server.Stop;
      end if;

      if Verbose then
         Text_IO.Put_Line ("Server.ServerRAPI.Stop - exit");
      end if;
   end Stop;

   procedure Light
     (P_Light_Id     : in Natural;
      P_Light_Status : in Type_Light_Status)
   is
      use Server;
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerRAPI.Light - enter");
      end if;

      if Server.Game_Engine = null then
         raise Game_Engine_Doesnt_Exists;
      else
         Server.Game_Engine.Entry_Light (P_Light_Id, P_Light_Status);
      end if;

      if Verbose then
         Text_IO.Put_Line ("Server.ServerRAPI.Light - exit");
      end if;
   end Light;

end Server.ServerRAPI;
