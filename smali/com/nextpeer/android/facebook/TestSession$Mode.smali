.class final enum Lcom/nextpeer/android/facebook/TestSession$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/TestSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/facebook/TestSession$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nextpeer/android/facebook/TestSession$Mode;

.field public static final enum PRIVATE:Lcom/nextpeer/android/facebook/TestSession$Mode;

.field public static final enum SHARED:Lcom/nextpeer/android/facebook/TestSession$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/TestSession$Mode;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/facebook/TestSession$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/TestSession$Mode;->PRIVATE:Lcom/nextpeer/android/facebook/TestSession$Mode;

    new-instance v0, Lcom/nextpeer/android/facebook/TestSession$Mode;

    const-string v1, "SHARED"

    invoke-direct {v0, v1, v3}, Lcom/nextpeer/android/facebook/TestSession$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/TestSession$Mode;->SHARED:Lcom/nextpeer/android/facebook/TestSession$Mode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nextpeer/android/facebook/TestSession$Mode;

    sget-object v1, Lcom/nextpeer/android/facebook/TestSession$Mode;->PRIVATE:Lcom/nextpeer/android/facebook/TestSession$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/facebook/TestSession$Mode;->SHARED:Lcom/nextpeer/android/facebook/TestSession$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/facebook/TestSession$Mode;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/TestSession$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/facebook/TestSession$Mode;
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/TestSession$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/TestSession$Mode;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/facebook/TestSession$Mode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/facebook/TestSession$Mode;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/TestSession$Mode;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/facebook/TestSession$Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
