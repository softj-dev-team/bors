.class public Lcom/zharev/common/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field public name:Ljava/lang/String;

.field public seek_value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/zharev/common/Property;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/zharev/common/Property;->seek_value:Ljava/lang/String;

    return-void
.end method
