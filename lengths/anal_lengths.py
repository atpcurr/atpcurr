import pandas as pd
import matplotlib.pyplot as plt
import seaborn
from matplotlib import rc, rcParams

rc('font', **{'family':'serif','serif':'Computer Modern'})
rc('text', usetex=True)

flop_files = [
    "length_flop_simple.csv",
    "length_flop_left_random.csv",
    "length_flop_random.csv"
    ]

rlcop_files = [
    "length_rlcop_simple.csv",
    "length_rlcop_left_random.csv",
    "length_rlcop_random.csv"
    ]

flop_files_binary = [
    "length_flop_simple_binary.csv",
    "length_flop_left_random_binary.csv"
    ]


datasets=["RA-1 (1800 / 1800)", "RA-2 ( 991 / 1000)", "RA-3 ( 672 / 1000)"]
datasets_binary=["RA-1 (1800 / 1800)", "RA-2 ( 822 / 1000)"]

outname = "histogram.png"
outname_binary = "histogram_binary.png"

colnames_flop = ["file", "flop"]
colnames_rlcop = ["file", "rlcop"]

dfs = []
for i in range(3):
    df_flop = pd.read_csv(flop_files[i], header=None, names=colnames_flop)    
    df_rlcop = pd.read_csv(rlcop_files[i], header=None, names=colnames_rlcop)
    merged = pd.merge(df_flop, df_rlcop, on='file', how="outer")

    flop_longer = (merged["flop"] > merged["rlcop"]).sum()
    rlcop_longer = (merged["flop"] < merged["rlcop"]).sum()
    flop_only = merged["rlcop"].isna().sum()
    rlcop_only = merged["flop"].isna().sum()
    both = len(merged.dropna())

    print("Stage {}, both {}, flop only {}, rlcop only {}, flop longer {}, rlcop longer {}".format(i+1, both, flop_only, rlcop_only, flop_longer, rlcop_longer))

    df_flop["dataset"] = datasets[i]
    df_flop["Proof length"] = df_flop["flop"]
    dfs.append(df_flop)


df = pd.concat(dfs)
# seaborn.histplot(x="flop", data=df, hue="dataset",  kde=False, fill=False, log_scale=True, element="step", bins=100)
seaborn.kdeplot(x="Proof length", data=df, hue="dataset", log_scale=True, common_norm=False)

plt.xlim(1,100000)
plt.grid()
plt.savefig(outname, dpi=300)

# binary
plt.clf()
dfs = []
for i in range(2):
    df_flop = pd.read_csv(flop_files_binary[i], header=None, names=colnames_flop)    
    df_flop["dataset"] = datasets_binary[i]
    df_flop["Proof length"] = df_flop["flop"]
    dfs.append(df_flop)
df = pd.concat(dfs)
seaborn.kdeplot(x="Proof length", data=df, hue="dataset", log_scale=True, common_norm=False)

plt.xlim(1,100000)
plt.grid()
plt.savefig(outname_binary, dpi=300)




