using Clang.Generators
using Clang.LibClang.Clang_jll  # replace this with your jll package

cd(@__DIR__)

include_dir = @__DIR__
#clang_dir = joinpath(include_dir, "clang-c")

options = load_options(joinpath(@__DIR__, "generator.toml"))

# add compiler flags, e.g. "-DXXXXXXXXX"
args = get_default_args()  # Note you must call this function firstly and then append your own flags
push!(args, "-I$include_dir")

# headers = [joinpath(include_dir, header) for header in readdir(include_dir) if endswith(header, ".h") && header != "OTF2_OpenMP_Locks.h"]
headers = [joinpath(include_dir, "otf2.h")]
# there is also an experimental `detect_headers` function for auto-detecting top-level headers in the directory
# headers = detect_headers(clang_dir, args)

# create context
ctx = create_context(headers, args, options)

# run generator
build!(ctx)
