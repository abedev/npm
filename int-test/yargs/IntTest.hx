package yargs;

import npm.Yargs;

class IntTest {
  public static function main() {
    var result = new Yargs(js.Node.process.argv.slice(2))
      .usage("Usage: $0 [options]

Some other text here.")
      .option('a', {
        alias: 'all',
        describe: "Turn on the all option",
        demand: true,
        choices: ["a", "b", "c"]
      })
      .help()
      .argv;

    trace(result);
  }
}
