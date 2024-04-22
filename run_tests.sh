#!/bin/bash

# Create a directory to store test results
mkdir -p test_results

# Run dummy tests and generate JUnit XML files
echo "<testsuite name='DummyTestSuite' tests='3' failures='0'>" > test_results/dummy_tests.xml
echo "  <testcase name='Test1' classname='DummyTestClass' time='1.0' />" >> test_results/dummy_tests.xml
echo "  <testcase name='Test2' classname='DummyTestClass' time='0.5' />" >> test_results/dummy_tests.xml
echo "  <testcase name='Test3' classname='DummyTestClass' time='1.5' />" >> test_results/dummy_tests.xml
echo "</testsuite>" >> test_results/dummy_tests.xml

# Display the path to the generated XML file
echo "JUnit XML file generated: $(pwd)/test_results/dummy_tests.xml"
