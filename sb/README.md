# topic md

## 

|AI|ライセンス費|得意領域|日本語|英語|特徴|
|--|--|--|--|--|--|
|ChatGPT|$20/月/人|CAD生成、コード、文章、基板スクリプト|○|◎|最もバランスが良い。実装レベルのコードが安定。|
|Gemini|$20/月/人|物理計算、浮力モデル、回路設計、画像解析|○|◎|理系タスクに強く、計算精度が高い|
|DeepSeek|$10/月/人|最適化、低レベルコード、I2C高速化|△|◎|Python高速化・同期処理の最適化が得意。|
|Claude|$20/月/人|法務文書、仕様書、構造化、長文整理|◎|○|申請書類・安全手順書の生成が最強。|


|AI(提供元)|主なモデル (2026年)|強み|弱み|
|--|--|--|--|
|ChatGPT (OpenAI)|GPT-5.5 / GPT-5.5 Instant|用途の幅が最も広い (文章・コーディング・推論・画像認識)。Codex・Deep Research・Record Mode・60超の外部連携 (Google Drive, Slack, GitHub, Salesforce等) を備えたプラットフォーム。最新のGPT-5.5系は法律・医療・金融での幻覚 (hallucination) を低減しつつ低遅延を維持。1Mトークンの文脈長|モデル更新が60日未満の周期と非常に速く、名称体系が複雑。高度な機能は有料プラン依存。幻覚は減ったがゼロではない|
|Claude (Anthropic)|Opus 4.8 / Fable 5|コーディング (SWE-bench Verified) と科学的推論 (GPQA) で商用モデル上位。出力が64Kトークンと長く、長文生成に有利。Opus 4.8は正直さ・信頼性を重視し、自分が書いたコードの欠陥を見逃す確率がOpus 4.7の約1/4。1M文脈|合成スコアの幅では多モーダル・知識タスクで広いGPT-5.4にやや劣る。画像・動画の「生成」機能は非搭載。連携・エコシステムはGoogle/MSより小さい|
|Gemini (Google)|3.5 Flash / 3.1 Pro|Google Workspaceとの統合と、動画含む多モーダル生成 (Gemini Omni等)。Gemini 3.5 Flashは低コスト・低遅延でPro級の性能。3.1 Proは多モーダル推論 (MMMU-Pro 83.6%) で先行。Maps連携・1M文脈 |モデルが3層・約10種に分かれ選択が複雑。応答品質のばらつきが指摘される|
|Copilot (Microsoft)|GPT-5.5 + Claude Opus 4.8等を選択|Word・Excel・Outlook・Teams・PowerPointへのネイティブ統合とMicrosoft Graph連携。データはテナント内に留まり、顧客データを公開モデルの学習に使わない企業向けセキュリティ。Claude Opus 4.8など複数モデルを選択可|真価はMicrosoft 365契約が前提。Copilot Studioやエージェント構成は複雑。コンシューマ版は差別化が弱い|
|Perplexity|Sonar + 各社モデル|RAGでリアルタイム検索+引用付きの直接回答を返す「アンサーエンジン」。月約7.8億クエリ。出典の透明性が高い。Pro Texta.ai ($20/月) ひとつでClaude・GPT・Geminiに検索付きでアクセスでき割安|ライティングが弱く、コーディング不可。引用の正確性に課題があり、ゼロからの独自推論や多段の問題解決は苦手|
|DeepSeek|V4 / V4-Pro|コード生成・競技プログラミング・数学的推論が中核的な強み。コストが先端モデルの5〜10分の1と非常に安く、オープンウェイトで自社運用可。長文脈コードに強い|論が中核的な強み。コストが先端モデルの5〜10分の1と非常に安く、オープンウェイトで自社運用可。長文脈コードに強い 4sAPI Remote OpenClaw創作ライティングが弱く、政治的に敏感な話題に制限、混雑時の稼働が不安定。画像・音声・動画は中核機能ではなく推論特化型|
|Grok (xAI)|Grok 4.x (Grok 5予定)|X (旧Twitter) とWebのリアルタイム情報に強く、率直で制約の少ない作風と高い推論力。エージェント的ツール呼び出しに強く幻覚率が低いとされる版もある。動画生成(Grok Imagine)|作風が業務には砕けすぎる場合がある。Xエコシステム依存。論争・偏りの指摘があり、企業導入はまだ限定的|


- ChatGPT: [OpenAI GPT-5.5 Instant](https://openai.com/ja-JP/index/gpt-5-5-instant/) / [ChatGPT 2026ガイド](https://www.solidaitech.com/2026/05/chatgpt-complete-guide-models-features.html)
- Claude: [Anthropic Opus 4.8発表](https://www.anthropic.com/news/claude-opus-4-8) / [Claudeモデル比較](https://www.remoteopenclaw.com/blog/best-claude-models-2026)
- Gemini: [Google DeepMind Gemini](https://deepmind.google/models/gemini/) / [Gemini価格・モデル解説](https://www.eesel.ai/blog/google-gemini-3-pricing)
- Copilot: [M365 Copilot 2026年5月更新](https://techcommunity.microsoft.com/blog/microsoft365copilotblog/what%E2%80%99s-new-in-microsoft-365-copilot--may-2026/4522010) / [Copilot機能解説](https://copilot-experts.com/top-microsoft-copilot-features/)
- Perplexity: [Perplexity強み・弱みレビュー](https://konabayev.com/blog/perplexity-ai-review/) / [G2レビュー](https://learn.g2.com/perplexity-ai-review)
- DeepSeek: [DeepSeekモデル比較](https://www.remoteopenclaw.com/blog/best-deepseek-models-2026) / [V4-Proベンチマーク](https://blog.4sapi.com/blog/deepseek-v4-pro-benchmark-review-strengths-weaknesses)
- Grok: [xAI Grokガイド](https://www.robylon.ai/blog/what-is-xai-grok-a-complete-guide-to-the-chatbot) / [Grokモデル一覧](https://www.lorka.ai/ai-models/xai)