# Running-Example-of-Railway-Transportation-System
This railway transportation system of typed graph transformation system was developed on [GROOVE 5.8.1](https://sourceforge.net/projects/groove/)
## Type Graphs

The system includes 6 type graphs.

![Type Graphs](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/typegraphs.png "Type Graphs")

The system includes:
- a abstract node type `railway`, and extends to 3 subtypes: `track`, `junction` and `crossing`,
- a node type `road` that can point to itself and attach to `railway`,
- a node type `traffic_light` that attaches to `railway`, and identifies its condition by various of node labels (in GROOVE, node label is defined as flag),
- a node type `target_train` that runs on the node `railway`, and may crash with node `car`, its condition also be marked by node flags,
- a node type `depth` pointing to an integer that using to count and control the checking depth.
- a node type `car` that runs on the `road`, and cross the railway by `crossing`.

# Original System

## Initial Graph

The initial graph of the original model depict a train running on the railway that composed by several tracks.

![Initial Graph](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/start_graph.png "Initial Graph")

## Rules
### Rules  Add_New_Track

In our model, several rules can add new tracks to the current graphs. The main parts of these rules are the same. The differences appears at the behaviors of the `target_train`.

Here we introduce the common part of this rule cluster. The differences only appear on the `car` node, which respect to `accelerate`, `cruise`, and `brake`.

These figures of the rule accomplish:
- moving the `target_train` from one `railway` node to the next one. At the same time, it delete the former `railway` node and all other nodes that potentially attached to it. 

![Add New Track 1](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_new_track_1.png "Add New Track 1")

- creating `tracks` to all `railway` nodes that don't have a successive node.

![Add New Track 2](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_new_track_2.png "Add New Track 2")

- moving the matched `car` nodes from `road` node to the subsequent node. If the `car` has a flag `normal`, it will stop when there is a red `traffic_light` ahead, and if the `car` has a flag `emergency_vehicle`, it will ignore the red light and continue moving to the `crossing`.

![Add New Track 3](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_new_track_3.png "Add New Track 3")

- moving the `car` node from one `road` to the next `road` node.

![Add New Track 4](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_new_track_4.png "Add New Track 4")

- moving the `car` node from `crossing` to `road`, if `crash` doesn't happen.

![Add New Track 5](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_new_track_5.png "Add New Track 5")

- delete all other potential `railway` nodes that don't have a preceding node. 

![Add New Track 6](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_new_track_6.png "Add New Track 6")

Following figure depicts a checking depth counter. It is shown in almost every rule to count the checking depth.

![Counter](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/counter_for_all_rule.png "Counter")

### Rules  Add_New_Junction

In this cluster of rules, compare with the `Add_New_Track` rules, the main difference is on the type of new node that create by the rule.
This rule also move the `target_train` node from current node to the succesive node. However, it will create a new `junction` node ahead. If there already exists another railway branch, then two branches will joint on this `junction` node.

![Add_New_Junction](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_new_junction.png "Add_New_Junction")

### Rules Add_Two_Tracks

These rules will attach two new tracks to the `junction` node, if there doesn't exist two tracks that merged here. This will create a branch of the railway.

![Rules Add_Two_Tracks](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_two_tracks.png "Add_Two_Tracks")

### Rule Add_Traffic_Light

Before add a new `crossing` to the graph, the far end `traffic_light` should be created at first. This rule glues `traffic_light` to every `railway` nodes that don't have a succesive `railway` node on every branch of the railway.

![Rules Add_Traffic_Light](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_traffic_light.png "Add_Traffic_Light")

### Rules Add_Crossing

In the graph, several transtions after the application of [Add_Traffic_Light](#rule-add_traffic_light), a `crossing` node with `traffic_light` and `road` nodes must be created. They will be a completed pattern of crossing and traffic signal system.

![Add_Cross](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_cross.png "Add_Cross")

### Rules Add_Car

After `road` nodes with `crossing` added to the graph by [Rules Add_Crossing](#rules-add_crossing), `car` nodes with different conditions can be created on the `road` node.

Following rules add moving `car`, stopped `car`, and car that with `emergency_vehicle` flag to the graph respectively.

![Rule Add_Car_Moving](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_car_moving.png "Rule Add_Car_Moving")

![Rule Add_Car_Stopped](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_car_stopped.png "Rule Add_Car_Stopped")

![Rule Add_Car_Moving_Emergency](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_car_moving_emergency.png "Rule Add_Car_Moving_Emergency")

### Rules Connection

When `target_train` approaches the far end `traffic_light`, they will try to establish the connection. If they connected with each other, all of them will obtain a flag `connected`. If the connection failed, flag `unconnected` will be created.

![Rule connection_succeed](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/connection_succeed.png "Rule connection_succeed")

![Rule connection_failed](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/connection_failed.png "Rule connection_failed")

When the connection succeed, the `target_train` will not only follow the instruction of the traffic light, but also reveive the early warning signal when there is an on coming incursion on the `crossing` node. In contrast to that, the absence of the connection will lead the `target_train` only follow the traffic light.

### Rule Switch_Traffic_Light and Emergency_Alarm

When there is an on coming incursion to the crossing, following rules will be applied.

![Rule switch_traffic_light](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/switch_traffic_light.png "Rule switch_traffic_light")

When the far end `traffic_light` has not been deleted, this rule will switch the `traffic_light` for the train from `green` to `red` by replace the flags.

![Rule emergency_alarm](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/emergency_alarm.png "Rule emergency_alarm")

If there is connection between `target_train` and `traffic_light`, the `emergency` flag will be created on both nodes.

### Rule Red_Light_Emergency

When the `target_train` passes the `railway` with a red `traffic_light`, the `target_train` will obtain an `emergency` flag, when it doesn't exist.

![Rule red_light_emergency](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/red_light_emergency.png "Rule red_light_emergency")

### Rules Emergency_Brake

There are two emergency brake rules in the system. Whenever the `target_train` owns a `emergency` flag, these two high priority rules will be applied accordingly. The rule `emergency_brk_f2s` will brake the train from fast to slow, and the rule `emergency_brk_s2s` will stop the train from speed of slow.

![Rule emergency_brk_f2s](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/emergency_brk_f2s.png "Rule emergency_brk_f2s")

### Rule Crash

When the `target_train` arrives at the `crossing` with the `car` at the same time, the rule `crash` will be applied. This rule will give both `car` and `target_train` the flag `crash`, set the speed to `stop`, and the `crossing` node will get a flag of `accident`. As the rule has the highest priority, the simulation will stop here.

![Rule crash](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/crash.png "Rule crash")

### Rules Connection_Reset

If the `target_train` passes the `crossing` node and nothing happens(no collision), along with the deletion of both `crossing` and `traffic_light` nodes, the train will wipe its connection flag.

![Rule connection_reset_connected](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/connection_reset_connected.png "Rule connection_reset_connected")

![Rule connection_reset_unconnected](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/connection_reset_unconnected.png "Rule connection_reset_unconnected")

# Reversed Graph

## Initial Graph

