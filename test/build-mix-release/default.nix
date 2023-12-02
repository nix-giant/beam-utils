{ beamUtils, gcc, cmake, ... }:
let
  pname = "demo";
  version = "0.1.0";
  src = ./demo;
in
beamUtils.buildMixRelease {
  inherit pname version src;

  nativeBuildInputs = [ gcc cmake ];

  mixDeps = beamUtils.fetchMixDeps {
    pname = "${pname}-mix-deps";
    inherit version src;
    hash = "sha256-RWMBoFD0fEVlpHJcWox0yKqDPZW/iSamZfDgvu6BbSU=";
  };

  removeCookie = false;
  enableDebug = false;
}
