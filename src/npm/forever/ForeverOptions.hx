package npm.forever;

typedef ForeverOptions = {
  ?silent: Bool,
  ?uid: String,
  ?pidFile: String,
  ?max: Int,
  ?killTree: Bool,
  ?minUpTime: Int,
  ?spinSleepTime: Int,
  ?command: String,
  ?args: Array<String>,
  ?sourceDir: String,
  ?watch: Bool,
  ?watchIgnoreDotFiles: Bool,
  ?watchIgnorePatterns: Array<String>, // ?
  ?watchDirectory: String,
  ?spawnWith: {
    ?customFds: Array<Int>,
    ?setsid: Bool,
    ?uid: Int,
    ?gid: Int
  },
  ?env: Dynamic,
  ?cwd: String,
  ?logFile: String,
  ?outFile: String,
  ?errFile: String,
  ?parser: String -> Array<String> -> {
    command: String,
    args: Array<String>
  }
};
