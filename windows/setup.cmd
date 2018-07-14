rem
rem
rem      Life in LegoCity
rem      Copyright (C) 2018 Frank J Jorgensen
rem
rem      This program is free software: you can redistribute it and/or modify
rem      it under the terms of the GNU General Public License as published by
rem      the Free Software Foundation, either version 3 of the License, or
rem      (at your option) any later version.
rem
rem      This program is distributed in the hope that it will be useful,
rem      but WITHOUT ANY WARRANTY; without even the implied warranty of
rem      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
rem      GNU General Public License for more details.
rem
rem      You should have received a copy of the GNU General Public License
rem      along with this program.  If not, see <http://www.gnu.org/licenses/>.
rem 
rem
rem
rem When you are using the PolyORB version you need to set this environment variable
rem in each of the clients.
rem There is an IP adress in this string, which needs to correspond to the IP-Adress of your 
rem computer where your server is running.
rem 
rem On the server you need to change in a file called  'polyorb.conf' 
rem look for the attribute: polyorb.protocols.iiop.default_addr
rem adjust this to be the IP-adress of the server.
rem
rem 

set POLYORB_DSA_NAME_SERVICE=corbaloc:iiop:1.2@10.0.1.11:2809/_NameService


