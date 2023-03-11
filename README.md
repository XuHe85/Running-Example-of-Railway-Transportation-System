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

Here we firstly introduce the common part of this rule cluster, then show their differences.

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

![Add_New_Junction](https://github.com/XuHe85/Running-Example-of-Railway-Transportation-System/blob/main/Images/add_new_junction.png "Add_New_Junction")

