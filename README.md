<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swarm Debugger - Intentionally Buggy Demo</title>
</head>
<body>

    <h1>Swarm Debugger - Intentionally Buggy Demo</h1>

    <p>
        This repository contains a <strong>deliberately buggy Python project</strong>
        created to demonstrate the Swarm Debugger workflow. The programs contain
        intentional errors so that the debugging system can detect, analyze,
        and propose fixes for them.
    </p>

    <blockquote>
        <strong>Note:</strong> The failing programs and tests are intentional.
        Test failures are expected and are part of this debugging demonstration.
        They do not necessarily indicate a problem with the demo setup itself.
    </blockquote>

    <h2>Project Contents</h2>
    <ul>
        <li><code>calc.py</code> - Calculator module containing an intentional logic bug.</li>
        <li><code>test_calc.py</code> - Pytest test cases designed to expose incorrect behavior.</li>
        <li><code>.github/workflows/ci.yml</code> - GitHub Actions workflow for automated testing.</li>
        <li><code>push-demo.ps1</code> - Optional PowerShell script to demonstrate CI runs across commits.</li>
    </ul>

    <h2>Getting Started</h2>
    <p>Ensure Python 3.10 or later is installed. Install pytest using:</p>

    <pre><code>python -m pip install pytest</code></pre>

    <p>Run the test suite:</p>

    <pre><code>python -m pytest -q</code></pre>

    <p>
        Some tests are expected to fail because the implementation is intentionally
        incorrect. Examine the test output to identify the issues that need
        investigation.
    </p>

    <h2>GitHub Actions and CI</h2>
    <p>
        The GitHub Actions workflow runs the test suite on pushes and pull requests.
        A failed CI run is expected while the intentional bugs remain in the code.
        After applying a fix, run the tests again to verify whether the issue
        has been resolved.
    </p>

    <h2>Swarm Debugger Demonstration</h2>
    <ol>
        <li>Run the test suite and observe the failures.</li>
        <li>Provide the failing program and test output to Swarm Debugger.</li>
        <li>Let the Prosecutor, Defender, and Judge agents analyze the issue.</li>
        <li>Review the proposed fix and the reasoning behind it.</li>
        <li>Apply the fix in a controlled branch.</li>
        <li>Run the tests again and compare the results.</li>
    </ol>

    <p>
        The objective is to demonstrate evidence-based debugging. Fixes should
        be validated using actual program execution and test results rather
        than relying only on an AI agent's confidence.
    </p>

    <h2>Safety Warning</h2>
    <p>
        The optional <code>push-demo.ps1</code> script changes the Git remote
        to the URL provided and force-pushes the first commit to the remote
        <code>main</code> branch. Use it only with a disposable demo repository
        that you own. Never run it against an important team or production
        repository without understanding its effects.
    </p>

    <h2>Project Status</h2>
    <p>
        This repository is an intentionally buggy debugging fixture, not a
        production-ready calculator application. The failures are included
        specifically to test and demonstrate the Swarm Debugger workflow.
    </p>

</body>
</html>
