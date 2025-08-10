# IIC2143Reporter

> Important: This gem is DEPRECATED and has been replaced by 'ruby_test_student_grader'.
> Reason: the new name is clearer and ongoing development happens there.
>
> Recommended: gem install ruby_test_student_grader
> Learn more: [ruby_test_student_grader on RubyGems](https://rubygems.org/gems/ruby_test_student_grader)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/iic2143_reporter.svg)](https://badge.fury.io/rb/iic2143_reporter)


A Ruby gem for generating academic test reports in HTML format. Initially designed for automated grading of university programming assignments, with flexibility to adapt to different testing frameworks.

**Current Status**: Early Development (Beta)  
**Primary Use**: Automated evaluation of academic coding tasks  
**Future Goal**: Modular system for diverse testing scenarios

---

## Installation

### Local Development
Add to your Rails Gemfile:
```ruby
gem 'iic2143_reporter', path: '/path/to/gem/directory'
```
Then run:

```bash
bundle install
```
From RubyGems (Once Published)
```bash
gem install iic2143_reporter
```
## Basic Usage
Configure in your test helper:

```bash
 test/test_helper.rb
```
```ruby
require 'iic2143_reporter'

Minitest.after_run do
  IIC2143Reporter::Reporter.new(
    total_score,      # Calculated score
    max_score,        # Maximum possible score
    failed_tests,     # Array of failed test names
    automated_feedback # Generated feedback summary
  ).generate
end
```
Report will be generated at:

```bash
public/test_report.html
```
## Evaluated Data:
```bash
Test results (pass/fail)

Score calculations

Execution metadata

Custom feedback

Detailed error traces
```
## Development Current Features

- [x] HTML Report Generation
- [x] Academic Grading System
- [x] Detailed Error Analysis
- [x] Customizable Templates

Planned Features
- [ ] PDF/CSV Export
- [ ] LMS Integration
- [ ] Code Similarity Detection
- [ ] AI-Powered Feedback

## Academic Configuration
```ruby
IIC2143Reporter.configure do |config|
  config.grading_scale = { 
    passing: 4.0,
    excellence: 5.5
  }
  config.rubric = {
    code_quality: 30%,
    coverage: 20%,
    functionality: 50%
  }
end
```
## Architecture
```bash
lib/
├── iic2143_reporter/
│   ├── reporter.rb         # Core logic
│   ├── grader.rb           # Grading system
│   └── template.html.erb   # HTML template
├── iic2143_reporter.rb     # Main module
```
## Contributing
We welcome contributions for:

New report formats

Additional framework support

Code analysis improvements

AI integration modules


## License
MIT License - See LICENSE. Requires attribution in academic materials using this software.

Educational assessment tool - Adaptable for diverse pedagogical needs.

**Note**: This project is in very early stage and could have major bugs
