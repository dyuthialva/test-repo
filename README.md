# Swarm Debugger — Intentionally Buggy Demo

## Overview

This repository contains a **deliberately buggy Python project** created to demonstrate the Swarm Debugger workflow. The programs contain intentional errors so that the debugging system can detect, analyze, and propose fixes for them.

> **Note:** The failing programs and tests are intentional. Test failures are expected and are part of this debugging demonstration. They do not necessarily indicate a problem with the demo setup itself.

## Project Contents

- `calc.py` — Calculator module containing an intentional logic bug.
- `test_calc.py` — Pytest test cases designed to expose incorrect behavior.
- `.github/workflows/ci.yml` — GitHub Actions workflow for automated testing.
- `push-demo.ps1` — Optional PowerShell script to demonstrate CI runs across commits.

## Getting Started

Ensure Python 3.10 or later is installed.

Install pytest:

```bash
python -m pip install pytest
```

Run the test suite:

```bash
python -m pytest -q
```

Some tests are expected to fail because the implementation is intentionally incorrect. Examine the test output to identify the issues that need investigation.

## GitHub Actions and CI

The GitHub Actions workflow runs the test suite on pushes and pull requests.

A failed CI run is expected while the intentional bugs remain in the code. After applying a fix, run the tests again to verify whether the issue has been resolved.

## Swarm Debugger Demonstration

1. Run the test suite and observe the failures.
2. Provide the failing program and test output to Swarm Debugger.
3. Let the **Prosecutor, Defender, and Judge** agents analyze the issue.
4. Review the proposed fix and the reasoning behind it.
5. Apply the fix in a controlled branch.
6. Run the tests again and compare the results.

The objective is to demonstrate **evidence-based debugging**. Fixes should be validated using actual program execution and test results rather than relying only on an AI agent's confidence.

## Safety Warning

The optional `push-demo.ps1` script changes the Git remote to the URL provided and force-pushes the first commit to the remote `main` branch.

Use it only with a disposable demo repository that you own. Never run it against an important team or production repository without understanding its effects.

## Project Status

This repository is an intentionally buggy debugging fixture, not a production-ready calculator application. The failures are included specifically to test and demonstrate the Swarm Debugger workflow.
