.class Lzendesk/core/ZendeskSettingsStorage;
.super Ljava/lang/Object;
.source "ZendeskSettingsStorage.java"

# interfaces
.implements Lzendesk/core/SettingsStorage;


# static fields
.field private static final LAST_UPDATE:Ljava/lang/String; = "last_settings_update"

.field private static final RAWSETTTINGS_KEYSET:Ljava/lang/String; = "rawsettings_keyset"


# instance fields
.field private final settingsStorage:Lzendesk/core/BaseStorage;


# direct methods
.method constructor <init>(Lzendesk/core/BaseStorage;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    return-void
.end method


# virtual methods
.method public areSettingsUpToDate(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7

    .line 89
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    const-string v2, "last_settings_update"

    const-class v3, Ljava/lang/Long;

    invoke-interface {v1, v2, v3}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long p3, v2, p1

    if-gez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 40
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    invoke-interface {v1}, Lzendesk/core/BaseStorage;->clear()V

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRawSettings()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    monitor-enter v0

    .line 62
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    iget-object v2, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    const-string v3, "rawsettings_keyset"

    const-class v4, Ljava/util/Set;

    invoke-interface {v2, v3, v4}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 68
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 70
    iget-object v4, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    const-class v5, Lcom/google/gson/JsonElement;

    invoke-interface {v4, v3, v5}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSettings(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    invoke-interface {v1, p1, p2}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasStoredSettings()Z
    .locals 3

    .line 81
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    const-string v2, "last_settings_update"

    invoke-interface {v1, v2}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public storeRawSettings(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    const-string v2, "last_settings_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    iget-object v3, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lzendesk/core/ZendeskSettingsStorage;->settingsStorage:Lzendesk/core/BaseStorage;

    const-string v2, "rawsettings_keyset"

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
