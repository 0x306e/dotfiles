# Created by newuser for 5.1.2

setopt nonomatch
export LANG=ja_JP.UTF-8
# Emacs ���C�N�ȑ����L���ɂ���i�������͒��� Ctrl-F,B �ŃJ�[�\���ړ��Ȃǁj
# Vi ���C�N�ȑ��삪�D�݂ł���� `bindkey -v` �Ƃ���
bindkey -v

# �����⊮��L���ɂ���
# �R�}���h�̈�����p�X����r���܂œ��͂��� <Tab> �������Ƃ��������ɕ⊮���Ă����
# ��F `cd path/to/<Tab>`, `ls -<Tab>`
autoload -U compinit; compinit
setopt auto_param_slash
setopt print_eight_bit

# ���͂����R�}���h�����݂����A���f�B���N�g�����ƈ�v����Ȃ�A�f�B���N�g���� cd ����
# ��F /usr/bin �Ɠ��͂���� /usr/bin �f�B���N�g���Ɉړ�
setopt auto_cd

# ����ݒ肷��ƁA .. �Ƃ������͂�����1��̃f�B���N�g���Ɉړ��ł���̂Łc�c
# 2��A3��ɂ��ړ��ł���悤�ɂ���
alias ...='cd ../..'
alias ....='cd ../../..'

# "~hoge" ������̃p�X���ɓW�J�����悤�ɂ���i�u�b�N�}�[�N�̂悤�Ȃ��́j
# ��F cd ~hoge �Ɠ��͂���� /long/path/to/hogehoge �f�B���N�g���Ɉړ�
hash -d hoge=/long/path/to/hogehoge

# cd ������̃f�B���N�g�����f�B���N�g���X�^�b�N�ɒǉ�����
# �f�B���N�g���X�^�b�N�Ƃ͍��܂łɍs�����f�B���N�g���̗����̂���
# `cd +<Tab>` �Ńf�B���N�g���̗������\������A�����Ɉړ��ł���
setopt auto_pushd

# pushd �����Ƃ��A�f�B���N�g�������łɃX�^�b�N�Ɋ܂܂�Ă���΃X�^�b�N�ɒǉ����Ȃ�
setopt pushd_ignore_dups

# �g�� glob ��L���ɂ���
# glob �Ƃ̓p�X���Ƀ}�b�`���郏�C���h�J�[�h�p�^�[���̂���
# �i���Ƃ��� `mv hoge.* ~/dir` �ɂ����� "*"�j
# �g�� glob ��L���ɂ���� # ~ ^ ���p�^�[���Ƃ��Ĉ�����
# �ǂ������Ӗ��������� `man zshexpn` �� FILENAME GENERATION ���Q��
setopt extended_glob

# ���͂����R�}���h�����łɃR�}���h�����Ɋ܂܂��ꍇ�A��������Â��ق��̃R�}���h���폜����
# �R�}���h�����Ƃ͍��܂œ��͂����R�}���h�̈ꗗ�̂��ƂŁA�㉺�L�[�ł��ǂ��
setopt hist_ignore_all_dups

# �R�}���h���X�y�[�X�Ŏn�܂�ꍇ�A�R�}���h�����ɒǉ����Ȃ�
# ��F <Space>echo hello �Ɠ���
setopt hist_ignore_space

# <Tab> �Ńp�X���̕⊮����\���������ƁA
# ������ <Tab> �������ƌ�₩��p�X����I���ł���悤�ɂȂ�
# ����I�Ԃɂ� <Tab> �� Ctrl-N,B,F,P
zstyle ':completion:*:default' menu select=1

# �P��̈ꕔ�Ƃ��Ĉ����镶���̃Z�b�g���w�肷��
# �����ł̓f�t�H���g�̃Z�b�g���� / �𔲂������̂Ƃ���
# ��������ƁA Ctrl-W �ŃJ�[�\���O��1�P����폜�����Ƃ��A / �܂łō폜���~�܂�
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# color scheme
autoload colors
colors

# prompt
local cdir="%{$fg[yellow]%}[%d]%{$reset_color%}"
local info="%{$fg[cyan]%}%n%{$reset_color%} @ %{$fg[green]%}%m%{$reset_color%} $ "
PROMPT="$cdir
$info"
PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"

# aliases
alias ls='ls -F --color=auto --show-control-chars -I "NTUSER.DAT*"'
alias lls='ls -al -F --color=auto --show-control-chars -I "NTUSER.DAT*"'


