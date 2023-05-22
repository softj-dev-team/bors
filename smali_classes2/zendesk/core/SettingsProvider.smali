.class public interface abstract Lzendesk/core/SettingsProvider;
.super Ljava/lang/Object;
.source "SettingsProvider.java"


# virtual methods
.method public abstract getCoreSettings(Lcom/zendesk/service/ZendeskCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/core/CoreSettings;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSettingsForSdk(Ljava/lang/String;Ljava/lang/Class;Lcom/zendesk/service/ZendeskCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lzendesk/core/Settings;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/core/SettingsPack<",
            "TE;>;>;)V"
        }
    .end annotation
.end method
