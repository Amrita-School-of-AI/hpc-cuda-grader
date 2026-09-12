# hpc-cuda-grader

Container image used by the Classroom 50 autograder for the CUDA items of
23AID304 (Amrita School of AI): `nvidia/cuda:13.0.0-devel-ubuntu22.04` plus
`curl`, `git` and `gh`, which the autograde runner needs inside a container.
Compile-only; the hosted runner has no GPU and GPU checks run on the cluster.

Pull: `ghcr.io/amrita-school-of-ai/hpc-cuda-grader:13.0`
