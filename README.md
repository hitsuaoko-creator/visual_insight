# Visual Insight

一个面向 UI 设计前置分析的视觉洞察知识库与 Prompt 工具包。

它用于在视觉设计前，基于 PRD、需求背景、用户角色、交互链路截图、当前 UI、竞品 UXUI 材料、品牌规范和历史 UI 问题，产出可进入设计评审的视觉洞察、关键路径判断、设计原则命中和可执行 UI 建议。

## 适用对象

- UI 设计师
- UX 设计师
- 产品设计负责人
- 设计评审参与者
- 使用 AI 辅助做设计洞察的团队
- Claude Code、Cursor、Codex 或其他 AI Agent 使用者

## 这个项目解决什么问题

视觉洞察容易变成“好不好看”“高级不高级”的主观讨论。本项目把视觉判断收束到四个依据：

- 业务路径
- 用户判断
- UI 元素
- 设计原则与指标

每条关键建议都应尽量说明：

- 解决什么问题
- 证据来自哪里
- 作用在哪个路径步骤
- 要改哪个 UI 元素
- 命中什么视觉原则
- 影响哪个指标

## 目录结构

```text
visual-insight/
├── README.md
├── AGENTS.md
├── CLAUDE.md
├── SKILL.md
├── .codex/
│   └── skills/
│       └── visual-insight/
│           └── SKILL.md
├── .cursor/
│   ├── skills/
│       └── visual-insight/
│           └── SKILL.md
│   └── rules/
│       └── visual-insight.mdc
├── .claude/
│   └── skills/
│       └── visual-insight/
│           └── SKILL.md
├── agents/
│   └── openai.yaml
├── docs/
│   ├── 视觉洞察工作流.md
│   ├── 视觉原则知识库.md
│   ├── 竞品UXUI分析框架.md
│   └── 输出模板.md
├── prompts/
│   └── 视觉洞察主Prompt.md
├── scripts/
│   └── install.sh
└── LICENSE
```

## 安装到 Codex、Cursor、Claude Code

一键安装到三个工具的个人 Skills 目录：

```bash
bash scripts/install.sh
```

安装后位置：

```text
~/.codex/skills/visual-insight
~/.cursor/skills/visual-insight
~/.claude/skills/visual-insight
```

如果当前会话没有立刻出现 `/visual-insight`，重启对应工具或新开一个会话。

## 斜杠唤起

安装后可尝试在对应工具里输入：

```text
/visual-insight
```

也可以自然语言唤起：

```text
使用 visual-insight skill，帮我基于这个 PRD 做视觉洞察。
```

说明：

- Claude Code 的 skill 命令名来自 skill 目录名，因此 `.claude/skills/visual-insight/SKILL.md` 对应 `/visual-insight`。
- Cursor 支持 Agent Skills，安装到 `~/.cursor/skills/visual-insight` 后可在 Agent 的 Skills 列表中使用；项目内还提供 `.cursor/rules/visual-insight.mdc` 作为规则兜底。
- Codex 会通过 `SKILL.md` 和 `agents/openai.yaml` 识别该技能；如果 `/visual-insight` 未出现在界面中，仍可通过“使用 visual-insight skill”明确触发。

## 快速使用

把下面这段发给任意 AI 工具：

```text
请按这个仓库的视觉洞察工作流帮我做分析。

先阅读：
1. docs/视觉洞察工作流.md
2. docs/视觉原则知识库.md
3. docs/竞品UXUI分析框架.md
4. docs/输出模板.md
5. prompts/视觉洞察主Prompt.md

然后基于我提供的 PRD、关键路径、链路截图、竞品材料、品牌规范和历史 UI 问题，输出视觉洞察报告。
```

也可以直接复制：

[prompts/视觉洞察主Prompt.md](prompts/视觉洞察主Prompt.md)

## 推荐输入格式

```text
需求名称：
【粘贴】

需求背景：
【粘贴】

PRD：
【粘贴正文，或上传文档/截图】

目标角色：
【如没有，请基于 PRD 反推】

关键路径：
【例如：首页 → 点击创作 → 进入创作页 → 选择模板 → 生成内容 → 保存/发布】

交互链路截图：
【粘贴截图，或说明稍后上传】

竞品材料：
【竞品名称 + 截图/链接；没有则写：暂无，需要你告诉我该看哪些竞品页面】

品牌规范：
【品牌关键词、设计系统、色彩、字体、组件规范；没有则写：暂无】

历史 UI 问题：
【例如入口弱、转化低、按钮误触、状态反馈弱、品牌割裂；没有则写：暂无】
```

## 多 AI 工具适配

本项目的知识库是通用的，不只服务 Codex。

- `docs/`：唯一知识源，Claude Code、Cursor、Codex 和其他 AI 工具共用。
- `prompts/`：可复制给任意模型的 Prompt。
- `AGENTS.md`：通用 AI Agent 入口说明。
- `CLAUDE.md`：Claude Code 专用入口说明。
- `SKILL.md`：Codex Skill 自动触发入口。
- `agents/openai.yaml`：Codex UI 元数据。

## 输出内容

完整视觉洞察报告通常包含：

- 输入材料判断
- 需求视觉目标
- 视觉用户故事
- 设计原则命中分析
- 关键视觉路径
- 竞品 UXUI 洞察或竞品采集清单
- 视觉洞察 Checklist
- 可执行设计建议
- 分支与边缘路径
- 下一步需要补充
- 核心结论

## 许可证

MIT License
