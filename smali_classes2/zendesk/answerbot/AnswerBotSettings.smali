.class public final Lzendesk/answerbot/AnswerBotSettings;
.super Ljava/lang/Object;
.source "AnswerBotSettings.java"

# interfaces
.implements Lzendesk/core/Settings;


# static fields
.field static final ANSWER_BOT_SETTINGS_KEY:Ljava/lang/String; = "answer_bot"


# instance fields
.field private final enabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lzendesk/answerbot/AnswerBotSettings;->enabled:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lzendesk/answerbot/AnswerBotSettings;->enabled:Z

    return v0
.end method
