#
#
#      Life in LegoCity
#      Copyright (C) 2018 Frank J Jorgensen
#
#      This program is free software: you can redistribute it and/or modify
#      it under the terms of the GNU General Public License as published by
#      the Free Software Foundation, either version 3 of the License, or
#      (at your option) any later version.
#
#      This program is distributed in the hope that it will be useful,
#      but WITHOUT ANY WARRANTY; without even the implied warranty of
#      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#      GNU General Public License for more details.
#
#      You should have received a copy of the GNU General Public License
#      along with this program.  If not, see <http://www.gnu.org/licenses/>.
# 
#
#
# When you are using the PolyORB version you need to set this environment variable
# in each of the clients.
# There is an IP adress in this string, which needs to correspond to the IP-Adress of your 
# computer where your server is running.
# 
# On the server you need to change in a file called  'polyorb.conf' 
# look for the attribute: polyorb.protocols.iiop.default_addr
# adjust this to be the IP-adress of the server.
#
# 

shopt -s expand_aliases
alias alias_legocity_server='POLYORB_DSA_NAME_SERVICE=corbaloc:iiop:1.2@10.0.1.10:2809/NameService/000000024fF0000000080000000; export POLYORB_DSA_NAME_SERVICE; ../legocity_server/legocity_server'
alias alias_legocity_client='POLYORB_DSA_NAME_SERVICE=corbaloc:iiop:1.2@10.0.1.10:2809/NameService/000000024fF0000000080000000; export POLYORB_DSA_NAME_SERVICE; ../legocity_client/legocity_client'




