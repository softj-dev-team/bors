.class final enum Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;
.super Ljava/lang/Enum;
.source "PluginShareTwitterConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/plugin/PluginShareTwitterConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Oper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

.field public static final enum OperNone:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

.field public static final enum OperShareDialog:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

.field public static final enum OperShareDirect:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 41
    new-instance v0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    const-string v1, "OperNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;->OperNone:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    .line 42
    new-instance v1, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    const-string v3, "OperShareDirect"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;->OperShareDirect:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    .line 43
    new-instance v3, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    const-string v5, "OperShareDialog"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;->OperShareDialog:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;->$VALUES:[Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;
    .locals 1

    .line 40
    const-class v0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    return-object p0
.end method

.method public static values()[Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;
    .locals 1

    .line 40
    sget-object v0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;->$VALUES:[Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    invoke-virtual {v0}, [Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    return-object v0
.end method
