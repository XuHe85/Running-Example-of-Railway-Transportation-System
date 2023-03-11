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



