.class Lzendesk/support/CategoryResponse;
.super Ljava/lang/Object;
.source "CategoryResponse.java"


# instance fields
.field private category:Lzendesk/support/Category;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getCategory()Lzendesk/support/Category;
    .locals 1

    .line 24
    iget-object v0, p0, Lzendesk/support/CategoryResponse;->category:Lzendesk/support/Category;

    return-object v0
.end method
