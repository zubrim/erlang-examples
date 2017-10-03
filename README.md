erlang-examples
=====================================================

List of examples
-----------------------------------------------------
 - `study_guide`
   > references to study materials: books, courses, web, youtube...
 - `whyfp_article`
   > why functional programming matters:  
   > implementation of some examples from J.Hughes' [article][whyfp] 

[whyfp]: http://www.cse.chalmers.se/~rjmh/Papers/whyfp.html


Installation tips
-----------------------------------------------------
 - [Install OTP](<http://www.erlang.org/downloads>)
 - Install [Erlide](<http://erlide.org/>) OR [Emacs](<http://www.gnu.org/software/emacs/download.html#windows>)  
   - `setx HOME H:\tools\emacs\`
   - `cd %HOME%`
   - create file `.emacs`
     >(setq load-path (cons  "C:/ERLANG/lib/tools-2.11/emacs" load-path))  
    (setq erlang-root-dir "C:/ERLANG")  
    (setq exec-path (cons "C:/ERLANG/bin" exec-path))  
    (require 'erlang-start)
   - Set erlang mode for the current buffer `M-x erlang-mode RET`

### Ref:
[The Erlang mode for Emacs](http://erlang.org/doc/apps/tools/erlang_mode_chapter.html)

