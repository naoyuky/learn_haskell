module Paths_hwcInteract (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/naoyuki/Desktop/learn-haskell-master/exercise-1-hello-cat/hwcInteract/.stack-work/install/x86_64-osx/lts-5.1/7.10.3/bin"
libdir     = "/Users/naoyuki/Desktop/learn-haskell-master/exercise-1-hello-cat/hwcInteract/.stack-work/install/x86_64-osx/lts-5.1/7.10.3/lib/x86_64-osx-ghc-7.10.3/hwcInteract-0.1.0.0-K0uSCiqnRq6LHV8jCNse2G"
datadir    = "/Users/naoyuki/Desktop/learn-haskell-master/exercise-1-hello-cat/hwcInteract/.stack-work/install/x86_64-osx/lts-5.1/7.10.3/share/x86_64-osx-ghc-7.10.3/hwcInteract-0.1.0.0"
libexecdir = "/Users/naoyuki/Desktop/learn-haskell-master/exercise-1-hello-cat/hwcInteract/.stack-work/install/x86_64-osx/lts-5.1/7.10.3/libexec"
sysconfdir = "/Users/naoyuki/Desktop/learn-haskell-master/exercise-1-hello-cat/hwcInteract/.stack-work/install/x86_64-osx/lts-5.1/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "hwcInteract_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "hwcInteract_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "hwcInteract_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "hwcInteract_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "hwcInteract_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
