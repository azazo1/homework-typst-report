
#let para-indent = 2em

// 获取当前激活的标题, 参数 prev 用于标记优先使用前一页的标题
#let active-heading(level: 1, prev: false) = {
  // 之前页面的标题
  let prev-headings = query(selector(heading.where(level: level)).before(here()))
  // 当前页面的标题
  let cur-headings = query(selector(heading.where(level: level)).after(here())).filter(it => (
    it.location().page() == here().page()
  ))
  if prev-headings.len() == 0 and cur-headings.len() == 0 {
    return none
  } else {
    if prev {
      if prev-headings.len() != 0 {
        return prev-headings.last()
      } else {
        return cur-headings.first()
      }
    } else {
      if cur-headings.len() != 0 {
        return cur-headings.first()
      } else {
        return prev-headings.last()
      }
    }
  }
}

// 项目配置, 使用方式:
// ```typst
// #show: conf(name: "xxx", ...)
// = 实验简介
// = 实验环境
// = 实验分析过程
// = 实验心得
// ```
//
// - codly: 更美观的代码块. 使用 `#codly(languages: codly-languages)` 可获得更好的显示效果
// - cuti: 中文伪粗体
// - numbly: 用于处理 numbering 的便捷工具
#let conf(
  title: "华东师范大学软件工程学院实验报告",
  course_name: "",
  grade: "2023级",
  lab_name: "", // 实验名称
  name: "",
  lab_no: "", // 实验编号
  stu_id: "",
  date: datetime.today(),
  advisor: "", // 指导老师
  group_no: "",
) = {
  // 返回闭包, 以便 conf 函数可直接传给 show
  doc => {
    // 参数设置
    import "@preview/numbly:0.1.0": numbly
    import "@preview/cuti:0.3.0": show-cn-fakebold


    // 中文伪粗体
    show: show-cn-fakebold
    set text(
      font: ("Times New Roman", "SimSun"),
      size: 13pt,
      lang: "zh",
    )

    // 修复 enum 标签错位的问题.
    import "@preview/itemize:0.2.0" as el
    show: el.default-enum-list

    set par(
      first-line-indent: (
        amount: para-indent,
        all: true,
      ),
      justify: true,
    )
    // Typst 的 first-line-indent 对标题后的第一段无效, 因此先创建一个空的第一段, 再减回它的高度
    // 这个问题曾在此讨论: https://github.com/typst/typst/issues/311#issuecomment-2589636525
    // Typst 0.13 已经解决了这个问题
    //
    // show selector.or(heading, table, grid, figure): it => {
    //   it
    //   ""
    //   context v(-par.spacing - measure("").height)
    // }
    let const_title = title
    set document(
      author: name,
      title: const_title,
      date: date,
    )

    // 页面信息
    set page(
      paper: "a4",
      numbering: numbly("{1}", "第{1}页/共{2}页"),
      header: [
        // 页眉
        #set text(11pt)
        #block(height: 1em, below: 0.1em, width: 100%)[
          #place(center)[
            // 页眉居中部分
            #const_title
            #v(2em)
          ]
          #place(right)[
            // 页眉靠右侧
            #context {
              text(size: 13pt)[
                #let h = active-heading(level: 1, prev: false)
                #if (h != none) {
                  h.body
                }
              ]
            }
          ]
          #place(left)[
            // 页眉靠左侧
            #context {
              text(size: 13pt)[
                #{
                  let h2 = active-heading(level: 2, prev: false)
                  // TODO 如果 h2 是 h1 的子标题, 那么才显示 h2.
                  // 但 Typst 的这些元素本身似乎不包含位置信息, 目前还不清楚该如何实现.
                  if (h2 != none) {
                    h2.body
                  }
                }
              ]
            }
          ]
        ]
        #v(0.1em)
        #align(center)[
          #line(length: 105%)
        ]
      ],
    )

    // 显示标题.
    align(center)[
      #block(inset: 40pt, text(size: 21pt)[ *#const_title* ])
    ]

    // 各级标题
    set heading(
      numbering: (..arr) => {
        // 形成第一级显示中文 一 二 三 ...
        // 第二级之后显示:
        // 1
        // 1.1
        // 1.1.1
        // ...
        // 的效果
        let arr = arr.pos()
        if (arr.len() == 1) {
          return numbering("一、", arr.at(0))
        }
        return numbly()(..arr).slice(2, -1)
      },
    )
    show heading: h => {
      h
      v(0.67em)
    }

    // 允许 figure 跨页
    show figure: set block(breakable: true)

    // 显示信息表格
    block(width: 100%)[
      #grid(
        align: left,
        column-gutter: 0.6em,
        row-gutter: 0.8em,
        columns: (auto, 1.5fr, auto, auto, auto, auto),
        grid.hline(),
        grid.cell(colspan: 6, []),
        "实验课程:", course_name, "年级:", grade, "实验成绩:", "",
        "实验名称:", lab_name, "姓名:", name, "", "",
        "实验编号:", lab_no, "学号:", stu_id, "实验日期:", date.display(),
        "指导老师:", advisor, "组号:", group_no, "", "",
        grid.cell(colspan: 6, []),
        grid.hline(),
      )
    ]

    v(1em)

    doc
  }
}
