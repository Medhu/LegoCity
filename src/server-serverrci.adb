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
with Server.ServerRAPI;

package body Server.ServerRCI is

   Verbose : constant Boolean := False;

   procedure Init is
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerRCI.Init - enter");
      end if;

      if Verbose then
         Text_IO.Put_Line ("Server.ServerRCI.Init - exit");
      end if;
   end Init;

   procedure Start is
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerRCI.Start - enter");
      end if;

      if Verbose then
         Text_IO.Put_Line ("Server.ServerRCI.Start - exit");
      end if;
   end Start;

   procedure Stop is
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerRCI.Stop - enter");
      end if;

      if Verbose then
         Text_IO.Put_Line ("Server.ServerRCI.Stop - exit");
      end if;
   end Stop;

   procedure Light
     (P_Light_Id     : in Natural;
      P_Light_Status : in Server.Type_Light_Status)
   is
      use Server;
   begin
      if Verbose then
         Text_IO.Put_Line ("Server.ServerRCI.Light - enter");
      end if;

      ServerRAPI.Light (P_Light_Id, P_Light_Status);

      if Verbose then
         Text_IO.Put_Line ("Server.ServerRCI.Light - exit");
      end if;
   end Light;

end Server.ServerRCI;
