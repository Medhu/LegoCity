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
with Server.ServerRCI;

package body Client.RPC is
   Verbose : constant Boolean := False;

   procedure Init is
   begin
      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Init - enter");
      end if;

      Text_IO.Put_Line ("Client.RPC - PolyORB version");

      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Init - exit");
      end if;
   end Init;

   procedure Connect is
   begin
      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Connect - enter");
      end if;

      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Connect - exit");
      end if;
   end Connect;

   procedure Disconnect is
   begin
      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Disconnect - enter");
      end if;

      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Disconnect - exit");
      end if;
   end Disconnect;

   procedure Start is
   begin
      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Start - enter");
      end if;

      Server.ServerRCI.Start;

      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Start - exit");
      end if;
   end Start;

   procedure Stop is
   begin
      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Stop - enter");
      end if;

      Server.ServerRCI.Stop;

      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Stop - exit");
      end if;
   end Stop;

   procedure Light
     (P_Light_Id     : in Server.Type_Light_Id;
      P_Light_Status : in Server.Type_Light_Status)
   is
   begin
      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Light - enter");
      end if;

      Server.ServerRCI.Light (P_Light_Id, P_Light_Status);

      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Light - exit");
      end if;

   end Light;

   function Button
     (P_Button_Id : in Server.Type_Button_Id) return Server.Type_Button_Status
   is

      Ret : Server.Type_Button_Status;
   begin
      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Button - enter");
      end if;

      Ret := Server.ServerRCI.Button (P_Button_Id);

      if Verbose then
         Text_IO.Put_Line ("Client.RPC.Button - exit");
      end if;

      return Ret;
   end Button;

end Client.RPC;
