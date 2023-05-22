.class public interface abstract Lzendesk/support/guide/HelpMvp$Presenter;
.super Ljava/lang/Object;
.source "HelpMvp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/HelpMvp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getItem(I)Lzendesk/support/HelpItem;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getItemForBinding(I)Lzendesk/support/HelpItem;
.end method

.method public abstract getItemViewType(I)I
.end method

.method public abstract onAttached()V
.end method

.method public abstract onCategoryClick(Lzendesk/support/CategoryItem;I)Z
.end method

.method public abstract onDetached()V
.end method

.method public abstract onSeeAllClick(Lzendesk/support/SeeAllArticlesItem;)V
.end method

.method public abstract setContentPresenter(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V
.end method
