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
with Server;
with Server.Server;

package Server.ServerAPI is

   procedure Init;
   procedure Start;
   procedure Run;
   procedure Stop;

   procedure Light
     (P_Light_Id     : in Type_Light_Id;
      P_Light_Status : in Type_Light_Status);

   function Button (P_Button_Id : in Type_Button_Id) return Type_Button_Status;
end Server.ServerAPI;
