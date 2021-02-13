@title		7: Optimisation
@markdown
The evolutions take a considerable amount of time, making
them run as fast as possible has been important.

Technique|Comment
-|-
Compilation|I started this current program off as Ruby but moved to Java for performance reasons.
Profiling|Netbeans has a profiler which I'm using heavily to identify hotspots.
JIT friendly|Declaring methods as final or private helps the JIT be able to optimise.
Less lambdas|Lambdas are nice but have an overhead with boxing and unboxing for instance.
Less logging|Even if not output log messages can be surprisingly expensive to construct.
Caching|A basic technique
Sampling|Run the evolution with a reduced set of training patterns first to pick the best mutations.
