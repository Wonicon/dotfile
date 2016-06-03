function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=all ^/dev/null)
end

function fish_prompt
    set -l none (set_color normal)
    set -l red (set_color -o red)
    set -l yellow_fish (set_color -o FFB732)
    
    set_color $fish_color_cwd
    
    echo -sn $yellow_fish (basename (pwd))
    
    if [ (_git_branch_name) ]
        echo -sn $red " " (_git_branch_name)
        if [ (_is_git_dirty) ]
            echo -sn (set_color normal) " ヾ(;ﾟдﾟ)/ "
        else
            echo -sn (set_color normal) " (*´ ▽ `*) "
        end
    else
        echo -sn (set_color normal) " (´ ∀ `) "
    end

    if [ $status != 0 ]
        echo -sn $red "! " (set_color normal)
    end

end
