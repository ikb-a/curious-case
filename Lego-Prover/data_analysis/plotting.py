"""
This script creates the plot seen in the LEGO-Prover ablation README
"""

import matplotlib.pyplot as plt
import numpy as np

# Total size of the dataset being evaluated
TOTAL = 12


def plot_runs(runs, label, style):
    x_vals = list(range(51))
    y_vals = np.zeros((len(runs), 51))

    for j, run in enumerate(runs):
        y_vals[j] = np.array(
            list(len([i for i in run if i <= x]) / 12 * 100 for x in x_vals)
        )

    y_vals_means = np.mean(y_vals, axis=0)
    y_vals_std = np.std(y_vals, axis=0)

    plt.plot(x_vals, y_vals_means, label=label, linestyle=style)  # , marker='o'

    plt.fill_between(
        x_vals, y_vals_means - y_vals_std, y_vals_means + y_vals_std, alpha=0.5
    )


if __name__ == "__main__":
    """
    These following arrays of numers the tries on which a success was recorded.
    To update these do:
    >>> cat log.out | grep True
    and record the try #'s. e.g.,

    >>>  cat ablation_experiment_results/0000_5_run_rand_att50/runval5_att50_0_job13575034_output_13575034.out | grep True
    ....Success: True - [data/full_data/debug/valid_rand/algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4.json], try: 1, Progress: 2/?, Sketch remaining: 596Pass rate: 0.5
    Success: True - [data/full_data/debug/valid_rand/mathd_algebra_109.json], try: 1, Progress: 5/?, Sketch remaining: 593Pass rate: 0.4
    ......Success: True - [data/full_data/debug/valid_rand/amc12b_2003_p9.json], try: 4, Progress: 12/?, Sketch remaining: 558Pass rate: 0.25
    Success: True - [data/full_data/debug/valid_rand/amc12a_2013_p8.json], try: 4, Progress: 12/?, Sketch remaining: 554Pass rate: 0.3333333333333333
    .........Success: True - [data/full_data/debug/valid_rand/numbertheory_sqmod4in01d.json], try: 32, Progress: 12/?, Sketch remaining: 208Pass rate: 0.4166666666666667
    .........Success: True - [data/full_data/debug/valid_rand/mathd_algebra_116.json], try: 35, Progress: 12/?, Sketch remaining: 158Pass rate: 0.5

    Looking at each line, we can see the model suceeded on tries 1, 1, 4, 4, 32, and 35;
    as was recorded below in the variable val_1.

    val_1 and val_2 are the baselines. abl1_1 and abl1_2 are the ablations.
    """
    val_1 = [1, 1, 4, 4, 32, 35]
    val_2 = [1, 1, 1, 10, 14, 15]

    abl1_1 = [1, 3, 4, 5, 7]
    abl1_2 = [1, 1, 1, 3, 11]

    fig, ax = plt.subplots()

    plot_runs([val_1, val_2], "LEGO-Prover", "--")
    plot_runs([abl1_1, abl1_2], "Zero reuse ablation", "-")
    plt.ylabel("% of Problems Solved")
    plt.xlabel("Solver Attempt")
    plt.legend(loc="lower right")

    ax.set_aspect(0.25)

    plt.savefig("ablat1.png", bbox_inches="tight", dpi=600)  # pad_inches='tight',
