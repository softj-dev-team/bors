.class Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;
.super Lcom/zendesk/service/ZendeskCallback;
.source "ZendeskSupportSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadHelpCenterSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Lzendesk/core/SettingsPack<",
        "Lzendesk/support/HelpCenterSettings;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/zendesk/service/ZendeskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/SupportSdkSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final supportSettingsPack:Lzendesk/core/SettingsPack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/core/SettingsPack<",
            "Lzendesk/support/SupportSettings;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;Lcom/zendesk/service/ZendeskCallback;Lzendesk/core/SettingsPack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/SupportSdkSettings;",
            ">;",
            "Lzendesk/core/SettingsPack<",
            "Lzendesk/support/SupportSettings;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->this$1:Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    .line 84
    iput-object p2, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->callback:Lcom/zendesk/service/ZendeskCallback;

    .line 85
    iput-object p3, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->supportSettingsPack:Lzendesk/core/SettingsPack;

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 4

    .line 105
    iget-object p1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ZendeskSettingsProvider"

    const-string v1, "Returning default Help Center Settings."

    .line 106
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-static {}, Lzendesk/support/HelpCenterSettings;->defaultSettings()Lzendesk/support/HelpCenterSettings;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->supportSettingsPack:Lzendesk/core/SettingsPack;

    .line 109
    invoke-virtual {v0}, Lzendesk/core/SettingsPack;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/core/CoreSettings;->getAuthentication()Lzendesk/core/AuthenticationType;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->callback:Lcom/zendesk/service/ZendeskCallback;

    new-instance v2, Lzendesk/support/SupportSdkSettings;

    iget-object v3, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->supportSettingsPack:Lzendesk/core/SettingsPack;

    invoke-virtual {v3}, Lzendesk/core/SettingsPack;->getSettings()Lzendesk/core/Settings;

    move-result-object v3

    check-cast v3, Lzendesk/support/SupportSettings;

    invoke-direct {v2, v3, p1, v0}, Lzendesk/support/SupportSdkSettings;-><init>(Lzendesk/support/SupportSettings;Lzendesk/support/HelpCenterSettings;Lzendesk/core/AuthenticationType;)V

    invoke-virtual {v1, v2}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Lzendesk/core/SettingsPack;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->onSuccess(Lzendesk/core/SettingsPack;)V

    return-void
.end method

.method public onSuccess(Lzendesk/core/SettingsPack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/SettingsPack<",
            "Lzendesk/support/HelpCenterSettings;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Lzendesk/core/SettingsPack;->getSettings()Lzendesk/core/Settings;

    move-result-object v0

    check-cast v0, Lzendesk/support/HelpCenterSettings;

    .line 92
    invoke-virtual {p1}, Lzendesk/core/SettingsPack;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/core/CoreSettings;->getAuthentication()Lzendesk/core/AuthenticationType;

    move-result-object p1

    .line 93
    iget-object v1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->this$1:Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;

    invoke-static {v1, v0}, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;->access$100(Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;Lzendesk/support/HelpCenterSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ZendeskSettingsProvider"

    const-string v3, "Successfully retrieved Settings"

    .line 95
    invoke-static {v2, v3, v1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz v1, :cond_0

    .line 97
    new-instance v2, Lzendesk/support/SupportSdkSettings;

    iget-object v3, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings$LoadHelpCenterSettings;->supportSettingsPack:Lzendesk/core/SettingsPack;

    invoke-virtual {v3}, Lzendesk/core/SettingsPack;->getSettings()Lzendesk/core/Settings;

    move-result-object v3

    check-cast v3, Lzendesk/support/SupportSettings;

    invoke-direct {v2, v3, v0, p1}, Lzendesk/support/SupportSdkSettings;-><init>(Lzendesk/support/SupportSettings;Lzendesk/support/HelpCenterSettings;Lzendesk/core/AuthenticationType;)V

    invoke-virtual {v1, v2}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
