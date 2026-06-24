package utilities.typedefs;
import backend.typedefs.CharacterParticleOffsetsData;

typedef SpriteProjectSpritedata = {
    defaultFramerate:Int,
    defaultDimensions:Array<Int>,
    maxPressure:Int,
    maxConfidence:Int,
    skills:Array<String>,
    originPosition:Array<Float>,
    particleOffsets:CharacterParticleOffsetsData
}
