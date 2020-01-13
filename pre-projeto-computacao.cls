%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a Universidade XXXX
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is SEU_NOME, SEU_EMAIL
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

% ---
% INICIO DAS CUSTOMIZACOES PARA O IFB - Taguatinga
% ---

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pre-projeto-computacao}[2020/01/13]
\DeclareOption{bacharelado}{\newcommand{\curso}{Bacharelado em Ci\^encia da Computa\c{c}\~ao}}
\DeclareOption{licenciatura}{\newcommand{\curso}{Licenciatura em Computa\c{c}\~ao}}
\ProcessOptions

\LoadClass[
	% -- opções da classe memoir --
	12pt,				% tamanho da fonte
	openright,			% capítulos começam em pág ímpar (insere página vazia caso preciso)
	oneside,			% para impressão em recto e verso. Oposto a oneside
	a4paper,			% tamanho do papel. 
	% -- opções da classe abntex2 --
	%chapter=TITLE,		% títulos de capítulos convertidos em letras maiúsculas
	%section=TITLE,		% títulos de seções convertidos em letras maiúsculas
	%subsection=TITLE,	% títulos de subseções convertidos em letras maiúsculas
	%subsubsection=TITLE,% títulos de subsubseções convertidos em letras maiúsculas
	% -- opções do pacote babel --
	english,			% idioma adicional para hifenização
	french,				% idioma adicional para hifenização
	spanish,			% idioma adicional para hifenização
	brazil,				% o último idioma é o principal do documento
	]{abntex2}
% ---
% PACOTES
% ---

% ---
% Pacotes fundamentais 
% ---
\RequirePackage{lmodern}			% Usa a fonte Latin Modern
\RequirePackage[utf8]{inputenc}		% Codificacao do documento (conversão automática dos acentos)
\RequirePackage{indentfirst}		% Indenta o primeiro parágrafo de cada seção.
\RequirePackage{color}				% Controle das cores
\RequirePackage{graphicx}			% Inclusão de gráficos
\RequirePackage{microtype} 			% para melhorias de justificação
% ---

% ---
% Pacotes adicionais, usados no anexo do modelo de folha de identificação
% ---
\RequirePackage{multicol}
\RequirePackage{multirow}
% ---

% ---
% Pacotes adicionais, usados apenas no âmbito do Modelo Canônico do abnteX2
% ---
\RequirePackage{lipsum}				% para geração de dummy text
% ---

% ---
% Pacotes de citações
% ---
\RequirePackage[brazilian,hyperpageref]{backref}	 % Paginas com as citações na bibl
\RequirePackage[alf]{abntex2cite}	% Citações padrão ABNT

% --- 
% CONFIGURAÇÕES DE PACOTES
% --- 

% ---
% Configurações do pacote backref
% Usado sem a opção hyperpageref de backref
\renewcommand{\backrefpagesname}{Citado na(s) página(s):~}
% Texto padrão antes do número das páginas
\renewcommand{\backref}{}
% Define os textos da citação
\renewcommand*{\backrefalt}[4]{
	\ifcase #1 %
	Nenhuma citação no texto.%
	\or
	Citado na página #2.%
	\else
	Citado #1 vezes nas páginas #2.%
	\fi}%
% ---

\newcommand{\areadepesquisa}[1]{\newcommand\@areadepesquisa{#1}}

\newcommand{\imprimirareadepesquisa}{\@areadepesquisa}

\newcommand{\orientadora}[1]{\orientador[Orientadora:]{#1}}
\newcommand{\coorientadora}[1]{\coorientador[Coorientadora:]{#1}}

% ---

% ---
% Configurações de aparência do PDF final

% alterando o aspecto da cor azul
\definecolor{blue}{RGB}{41,5,195}

% informações do PDF
\makeatletter
\hypersetup{
	%pagebackref=true,
	pdftitle={\@title}, 
	pdfauthor={\@author},
	pdfsubject={\imprimirpreambulo},
	pdfcreator={LaTeX with abnTeX2},
	pdfkeywords={abnt}{latex}{abntex}{abntex2}{relatório técnico}, 
	colorlinks=true,       		% false: boxed links; true: colored links
	linkcolor=blue,          	% color of internal links
	citecolor=blue,        		% color of links to bibliography
	filecolor=magenta,      		% color of file links
	urlcolor=blue,
	bookmarksdepth=4
}
\makeatother
% --- 



\instituicao{%
	Instituto Federal de Educação, Ciência e Tecnologia de Brasília -- Campus Taguatinga
	\par
	Curso Superior de \curso
}




% --- 
% Espaçamentos entre linhas e parágrafos 
% --- 

% O tamanho do parágrafo é dado por:
\setlength{\parindent}{1.3cm}

% Controle do espaçamento entre um parágrafo e outro:
\setlength{\parskip}{0.2cm}  % tente também \onelineskip

% ---
% compila o indice
% ---
\makeindex
% ---

% ----
% Início do documento
% ----



\tipotrabalho{Pré-projeto}
% O preambulo deve conter o tipo do trabalho, o objetivo, 
% o nome da instituição e a área de concentração 
\preambulo{Documento apresentado como requisito parcial para matrícula na disciplina de Projeto de Conclusão de Curso do curso superior de \curso}


% alterando a capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    \ABNTEXchapterfont\Large Instituto Federal de Educação, Ciência e Tecnologia de Brasília\\ Campus Taguatinga
    \vspace*{1cm}

    {\ABNTEXchapterfont\large \imprimirautor}
    
    {\ABNTEXchapterfont\large Linha de Pesquisa: \imprimirareadepesquisa}

    \begin{center}
    \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \end{center}
    
    \vspace*{4cm}

	\includegraphics[scale=1]{figuras/ifb-taguatinga}

	\vfill
    \large\imprimirlocal
    
    \large\imprimirdata
    
  
  \end{capa}
}


% folha de rosto 

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}
{\ABNTEXchapterfont\Large Instituto Federal de Educação, Ciência e Tecnologia de Brasília\\Campus Taguatinga}

    \vspace*{1cm}

{\ABNTEXchapterfont\large\imprimirautor}

{\ABNTEXchapterfont\large Área de Pesquisa: \imprimirareadepesquisa}
\vspace*{\fill}\vspace*{\fill}

\begin{center}
\ABNTEXchapterfont\bfseries\Large\imprimirtitulo
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \imprimirpreambulo
  \end{minipage}%
  \vspace*{\fill}
}%

{\large\imprimirorientadorRotulo~\imprimirorientador\par}

\abntex@ifnotempty{\imprimircoorientador}{%
  {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
}%

\vspace*{\fill}

{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao\vspace*{\fill}}}

{\large\imprimirlocal}

\par

{\large\imprimirdata}
\vspace*{1cm}
\end{center}
}

\makeatother



 
% ---
% FIM DAS CUSTOMIZACOES PARA IFB Taguatinga
% ---
