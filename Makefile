CC=flutter pub global run melos
CC_TEST=spec
CC_CHANGELOG=flutter pub global run changelog_cmd

default: analyze build_example


dep:
	flutter pub global activate melos;
	flutter pub global activate spec_cli;
	flutter pub global activate changelog_cmd;
	$(CC) bootstrap

check:
	$(CC_TEST)

fmt:
	$(CC) run format --no-select

analyze: fmt
	$(CC) run analyze --no-select

build_example:
	$(CC) run build_examples --no-select

ci_check_theme:
	$(CC) run theme_test --no-select

ci_check_component:
	$(CC) run component_test --no-select

ci_fmt_theme:
	$(CC) run theme_analyze --no-select

ci_fmt_component:
	$(CC) run component_analyze --no-select

check_themes: ci_fmt_theme ci_check_component

check_components: ci_fmt_component ci_check_component

changelog_component:
	cd packages/components && $(CC_CHANGELOG)

changelog_themes:
	cd packages/themes && $(CC_CHANGELOG)

changelog: changelog_rpc changelog_plugin

ci: dep ci_check_rpc check_plugin

clean:
	$(CC) clean