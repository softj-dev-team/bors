.class public Lzendesk/commonui/CacheFragment;
.super Landroidx/fragment/app/Fragment;
.source "CacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/commonui/CacheFragment$Supplier;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheFragment"


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzendesk/commonui/CacheFragment;->cache:Ljava/util/Map;

    return-void
.end method

.method public static from(Landroidx/fragment/app/FragmentActivity;)Lzendesk/commonui/CacheFragment;
    .locals 3

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "CacheFragment"

    .line 30
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 31
    instance-of v2, v1, Lzendesk/commonui/CacheFragment;

    if-eqz v2, :cond_0

    .line 32
    check-cast v1, Lzendesk/commonui/CacheFragment;

    return-object v1

    .line 35
    :cond_0
    new-instance v1, Lzendesk/commonui/CacheFragment;

    invoke-direct {v1}, Lzendesk/commonui/CacheFragment;-><init>()V

    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v2}, Lzendesk/commonui/CacheFragment;->setRetainInstance(Z)V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object v1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lzendesk/commonui/CacheFragment;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 52
    :try_start_0
    iget-object v0, p0, Lzendesk/commonui/CacheFragment;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lzendesk/commonui/CacheFragment;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getOrDefault(Ljava/lang/String;Lzendesk/commonui/CacheFragment$Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lzendesk/commonui/CacheFragment$Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Lzendesk/commonui/CacheFragment;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 74
    :cond_0
    invoke-interface {p2}, Lzendesk/commonui/CacheFragment$Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lzendesk/commonui/CacheFragment;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lzendesk/commonui/CacheFragment;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lzendesk/commonui/CacheFragment;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
