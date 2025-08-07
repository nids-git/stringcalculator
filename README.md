# 🧮 String Calculator TDD

This project is a solution to the **Test Driven Development (TDD)** . The task was to implement a `StringCalculator` using strict TDD practices.

---

## ✅ Features Implemented

- ✅ Returns `0` for empty input
- ✅ Returns the number for a single input (e.g., `"5"` → `5`)
- ✅ Handles comma-separated numbers (e.g., `"1,2"` → `3`)
- ✅ Handles newlines as delimiters (e.g., `"1\n2,3"` → `6`)
- ✅ Supports custom single-character delimiters (e.g., `"//;\n1;2"` → `3`)
- ✅ Throws exception for negative numbers and lists them (e.g., `"1,-2"` → `Negatives not allowed: [-2]`)
- ✅ Ignores numbers greater than 1000 (e.g., `"2,1001"` → `2`)

---

## 🧪 TDD Approach

This solution strictly follows the **Red ➝ Green ➝ Refactor** loop:
- 🟥 Write failing tests first
- 🟩 Write minimal code to pass the test
- 🧹 Refactor to improve code quality

Each commit in this repository represents one step in the TDD cycle.

---

## 🚀 Getting Started

### Prerequisites
- Flutter 

