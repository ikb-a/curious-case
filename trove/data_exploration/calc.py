import numpy as np
import scipy.stats

if __name__ == "__main__":
    print("Averages and Standard Deviations:")

    print("ABLATIONS:")
    data = np.array([0.25] * 5)
    print("count")
    print(f"{np.mean(data):.3f} $\pm$ {np.std(data):.3f}")

    data = np.array([0.05] * 5)
    print("geo")
    print(f"{np.mean(data):.3f} $\pm$ {np.std(data):.3f}")

    data = np.array([0.15, 0.12, 0.15, 0.13, 0.12])
    print("intermediate")
    print(f"{np.mean(data):.3f} $\pm$ {np.std(data):.3f}")

    data = np.array([0.27, 0.28, 0.31, 0.29, 0.3])
    print("number")
    print(f"{np.mean(data):.3f} $\pm$ {np.std(data):.3f}")

    ###############################
    print("\n\n\nORI (reprod)")
    data = np.array([0.24, 0.22, 0.24, 0.24, 0.24])
    print("count")
    print(f"{np.mean(data):.3f} $\pm$ {np.std(data):.3f}")

    data = np.array([0.05, 0.06, 0.06, 0.06, 0.06])
    print("geo")
    print(f"{np.mean(data):.3f} $\pm$ {np.std(data):.3f}")

    data = np.array([0.12, 0.12, 0.13, 0.12, 0.11])
    print("intermediate")
    print(f"{np.mean(data):.3f} $\pm$ {np.std(data):.3f}")

    data = np.array([0.26, 0.26, 0.27, 0.25, 0.25])
    print("number")
    print(f"{np.mean(data):.3f} $\pm$ {np.std(data):.3f}")
    print("\n\n")
    print("============================")
    print(
        f"Significance testing; note p={0.05/4} is significant at the 0.05 level after Bonferroni correction."
    )

    # Name, baseline, ablation
    to_test = [
        ("count", [0.24, 0.22, 0.24, 0.24, 0.24], [0.25] * 5),
        ("geo", [0.05, 0.06, 0.06, 0.06, 0.06], [0.05] * 5),
        ("inter", [0.12, 0.12, 0.13, 0.12, 0.11], [0.15, 0.12, 0.15, 0.13, 0.12]),
        ("num", [0.26, 0.26, 0.27, 0.25, 0.25], [0.27, 0.28, 0.31, 0.29, 0.3]),
    ]

    for name, baseline, ablation in to_test:
        print(name)
        print(
            scipy.stats.ttest_ind(
                baseline, ablation, equal_var=False, alternative="less"
            )
        )
        print("--------------------")
