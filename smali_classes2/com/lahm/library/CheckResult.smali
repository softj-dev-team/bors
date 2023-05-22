.class public Lcom/lahm/library/CheckResult;
.super Ljava/lang/Object;
.source "CheckResult.java"


# static fields
.field public static final RESULT_EMULATOR:I = 0x1

.field public static final RESULT_MAYBE_EMULATOR:I = 0x0

.field public static final RESULT_UNKNOWN:I = 0x2


# instance fields
.field public result:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/lahm/library/CheckResult;->result:I

    .line 13
    iput-object p2, p0, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    return-void
.end method
