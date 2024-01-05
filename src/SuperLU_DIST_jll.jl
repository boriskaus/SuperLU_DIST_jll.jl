# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SuperLU_DIST_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("SuperLU_DIST")
JLLWrappers.@generate_main_file("SuperLU_DIST", UUID("9a1356b0-3c82-5da3-b77c-7c198e8bd7ab"))
end  # module SuperLU_DIST_jll
