# pronto-flay-ignore-issue

## To reproduce the issue:

### Setup 
```bash
git clone git@github.com:mknapik/pronto-flay-ignore-issue.git
cd pronto-flay-ignore-issue
bundle
```

### Issue

```bash
bundle exec flay .
```

returns

```
Total score (lower is better) = 64

1) Similar code found in :defs (mass = 64)
  lib/duplication.rb:2
  lib/duplication.rb:8
```

but

```bash
bundle exec pronto run -r flay -c 596484d
```

shows issues in `spec/` directory even though it should be ignored:

```
lib/duplication.rb:2 W: Similar code found in duplication.rb:2, duplication.rb:8
lib/duplication.rb:8 W: Similar code found in duplication.rb:2, duplication.rb:8
spec/duplication_spec.rb:14 W: Similar code found in duplication_spec.rb:14, duplication_spec.rb:21, duplication_spec.rb:28, duplication_spec.rb:35, duplication_spec.rb:42, duplication_spec.rb:49
spec/duplication_spec.rb:21 W: Similar code found in duplication_spec.rb:14, duplication_spec.rb:21, duplication_spec.rb:28, duplication_spec.rb:35, duplication_spec.rb:42, duplication_spec.rb:49
spec/duplication_spec.rb:28 W: Similar code found in duplication_spec.rb:14, duplication_spec.rb:21, duplication_spec.rb:28, duplication_spec.rb:35, duplication_spec.rb:42, duplication_spec.rb:49
spec/duplication_spec.rb:35 W: Similar code found in duplication_spec.rb:14, duplication_spec.rb:21, duplication_spec.rb:28, duplication_spec.rb:35, duplication_spec.rb:42, duplication_spec.rb:49
spec/duplication_spec.rb:42 W: Similar code found in duplication_spec.rb:14, duplication_spec.rb:21, duplication_spec.rb:28, duplication_spec.rb:35, duplication_spec.rb:42, duplication_spec.rb:49
spec/duplication_spec.rb:49 W: Similar code found in duplication_spec.rb:14, duplication_spec.rb:21, duplication_spec.rb:28, duplication_spec.rb:35, duplication_spec.rb:42, duplication_spec.rb:49
```
