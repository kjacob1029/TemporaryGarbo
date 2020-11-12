using DataFrames, CSV
using Statistics
using Plots

ICU = CSV.read(joinpath(Pkg.dir("DataFrames"), "/Users/mathewjacob/Desktop/RxCOVea/COVID-19/SpatialModel/MonteCarlo/Results/NoRestrictions2/ICU_df.csv"));
N = 100
num_MC_simulations = 10
#x = [0:100:480]
fig = plot()
nms = [Symbol("t$i") for i in 1:num_MC_simulations]

for i in 1:num_MC_simulations
    plot!(fig, ICU[nms[i]][1:100], label="run "*string(i))
end

xlabel!(fig, "days")
ylabel!(fig, "num ICU patients")
title!(fig, "Shut Down of Businesses")
display(fig)
savefig("/Users/mathewjacob/Desktop/RxCOVea/COVID-19/SpatialModel/MonteCarlo/Results/NoRestrictions2/Masks.png")
