.class public Lcom/nextpeer/android/facebook/widget/WebDialog$Builder;
.super Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase",
        "<",
        "Lcom/nextpeer/android/facebook/widget/WebDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/nextpeer/android/facebook/widget/WebDialog;
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->build()Lcom/nextpeer/android/facebook/widget/WebDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOnCompleteListener(Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->setOnCompleteListener(Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTheme(I)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;->setTheme(I)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    return-object v0
.end method
