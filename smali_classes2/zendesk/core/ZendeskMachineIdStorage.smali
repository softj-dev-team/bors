.class public Lzendesk/core/ZendeskMachineIdStorage;
.super Ljava/lang/Object;
.source "ZendeskMachineIdStorage.java"

# interfaces
.implements Lzendesk/core/MachineIdStorage;


# static fields
.field private static final MACHINE_ID_KEY:Ljava/lang/String; = "machine_id_key"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lzendesk/core/ZendeskMachineIdStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private generateMachineId()Ljava/lang/String;
    .locals 3

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lzendesk/core/ZendeskMachineIdStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "machine_id_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method


# virtual methods
.method public getMachineId()Ljava/lang/String;
    .locals 3

    .line 28
    iget-object v0, p0, Lzendesk/core/ZendeskMachineIdStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "machine_id_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 32
    :cond_0
    invoke-direct {p0}, Lzendesk/core/ZendeskMachineIdStorage;->generateMachineId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
