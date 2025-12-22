# Decision Tree implementation using simple conditions

def decision_tree(outlook, humidity):
    if outlook == "Sunny":
        if humidity == "High":
            return "No"
        else:
            return "Yes"

    elif outlook == "Overcast":
        return "Yes"

    elif outlook == "Rain":
        return "Yes"


# Test the Decision Tree
print("Sunny, High  ->", decision_tree("Sunny", "High"))
print("Sunny, Normal ->", decision_tree("Sunny", "Normal"))
print("Overcast, High ->", decision_tree("Overcast", "High"))
