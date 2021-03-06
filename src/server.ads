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

package Server is
   pragma Pure;
   type Type_Light_Id is new Natural;
   type Type_Button_Id is new Natural;

   type Type_Light_Status is (Light_On, Light_Off);
   type Type_Button_Status is (Button_On, Button_Off);

   Game_Engine_Exists : exception;
   Game_Engine_Doesnt_Exists : exception;
end Server;
