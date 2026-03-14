# OpenClaw

一个最小可用的 OpenClaw 本地配置模板仓库。

## 快速开始

1. 复制默认配置并生成本地配置文件：

   ```bash
   ./scripts/configure_openclaw.sh
   ```

2. 按需修改 `config/openclaw.yaml` 中的参数。

3. 使用你自己的 OpenClaw 启动命令加载该配置（示例）：

   ```bash
   openclaw --config config/openclaw.yaml
   ```

> 说明：此仓库提供的是**配置模板与生成脚本**，方便你快速完成初始化；具体服务启动参数请按你的 OpenClaw 版本文档为准。

## 配置项说明

`config/openclaw.yaml` 包含以下关键字段：

- `server.host` / `server.port`: 服务监听地址与端口。
- `auth.enabled` / `auth.token`: 是否开启鉴权与访问令牌。
- `storage.path`: 本地数据目录。
- `logging.level`: 日志等级（`debug` / `info` / `warn` / `error`）。

## 脚本能力

`scripts/configure_openclaw.sh` 支持：

- 自动创建 `config/openclaw.yaml`（若不存在）。
- 通过环境变量覆盖默认值：
  - `OPENCLAW_HOST`
  - `OPENCLAW_PORT`
  - `OPENCLAW_AUTH_ENABLED`
  - `OPENCLAW_AUTH_TOKEN`
  - `OPENCLAW_STORAGE_PATH`
  - `OPENCLAW_LOG_LEVEL`

示例：

```bash
OPENCLAW_PORT=9090 OPENCLAW_LOG_LEVEL=debug ./scripts/configure_openclaw.sh
```
