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
with Client.RPC;

package body Client.Server_Adm is
   Verbose : constant Boolean := True;

   procedure Init is
   begin
      if Verbose then
         Text_IO.Put_Line ("Client.Server_Adm.Init - enter");
      end if;

      Client.RPC.Init;

      if Verbose then
         Text_IO.Put_Line ("Client.Server_Adm.Init - exit");
      end if;
   end Init;

   procedure Connect is
   begin
      if Verbose then
         Text_IO.Put_Line ("Client.Server_Adm.Connect - enter");
      end if;

      Client.RPC.Connect;

      if Verbose then
         Text_IO.Put_Line ("Client.Server_Adm.Connect - exit");
      end if;
   end Connect;

   procedure Disconnect is
   begin
      if Verbose then
         Text_IO.Put_Line ("Client.Server_Adm.Disconnect - enter");
      end if;

      Client.RPC.Disconnect;

      if Verbose then
         Text_IO.Put_Line ("Client.Server_Adm.Disconnect - exit");
      end if;
   end Disconnect;

end Client.Server_Adm;
