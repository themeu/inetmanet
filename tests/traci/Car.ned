//
// Copyright (C) 2008 Christoph Sommer <christoph.sommer@informatik.uni-erlangen.de>
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//

package inet.tests.traci;

import inet.base.NotificationBoard;
import inet.networklayer.common.InterfaceTable;
import inet.mobility.traci.TraCIMobility;
import inet.networklayer.ipv4.RoutingTable;
import inet.transport.udp.UDP;
import inet.nodes.inet.NetworkLayer;
import inet.linklayer.mf80211.Nic80211;
import inet.applications.traci.Test_TraCI;

module Car
{
    parameters:

    gates:

    submodules:
        notificationBoard: NotificationBoard {
            parameters:
                @display("p=60,62;i=block/control");
        }
        app: Test_TraCI {
            parameters:
                @display("p=153,62;i=block/app");
        }
        mobility: TraCIMobility {
            parameters:
                @display("p=60,131;i=block/cogwheel");
        }
    connections:

}

