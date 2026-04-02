import { startWebDashboard } from "../cli/web.js";
import { logger } from "../logger.js";

logger.info("Starting ElementClaw web dashboard...");
startWebDashboard();

// Keep the process alive
setInterval(() => {}, 1 << 30);
