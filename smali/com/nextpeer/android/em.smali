.class public abstract Lcom/nextpeer/android/em;
.super Landroid/support/v4/app/DialogFragment;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const v0, -0xb2b4f

    iput v0, p0, Lcom/nextpeer/android/em;->a:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    sget v1, Lcom/nextpeer/android/R$style;->NP___Theme_Dialog:I

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/em;->setStyle(II)V

    return-void
.end method
