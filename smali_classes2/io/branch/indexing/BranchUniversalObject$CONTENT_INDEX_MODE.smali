.class public final enum Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;
.super Ljava/lang/Enum;
.source "BranchUniversalObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/indexing/BranchUniversalObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONTENT_INDEX_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

.field public static final enum PRIVATE:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

.field public static final enum PUBLIC:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PUBLIC:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    .line 72
    new-instance v1, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    const-string v3, "PRIVATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->PRIVATE:Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 69
    sput-object v3, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->$VALUES:[Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;
    .locals 1

    .line 69
    const-class v0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    return-object p0
.end method

.method public static values()[Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;
    .locals 1

    .line 69
    sget-object v0, Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->$VALUES:[Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    invoke-virtual {v0}, [Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/indexing/BranchUniversalObject$CONTENT_INDEX_MODE;

    return-object v0
.end method
