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
