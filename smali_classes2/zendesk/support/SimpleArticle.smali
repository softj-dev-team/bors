.class public Lzendesk/support/SimpleArticle;
.super Ljava/lang/Object;
.source "SimpleArticle.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/Long;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/support/SimpleArticle;->id:Ljava/lang/Long;

    .line 27
    iput-object p2, p0, Lzendesk/support/SimpleArticle;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .locals 1

    .line 36
    iget-object v0, p0, Lzendesk/support/SimpleArticle;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lzendesk/support/SimpleArticle;->title:Ljava/lang/String;

    return-object v0
.end method
