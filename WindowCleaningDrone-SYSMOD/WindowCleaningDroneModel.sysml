package WindowCleaningDroneModel {
    occurrence def WindowCleaningDroneProject {
        private import SYSMODLibrary::*;
        private import Views::asTreeDiagram;
        package 'WCD-ProblemSpace' {
            occurrence buildingFacadeMaintenance {
                doc 
                /* The recurring maintenance of glass façades on mid- and high-rise
                 * commercial buildings (offices, hotels, 5 to 40 floors), including
                 * the people who commission, perform and are affected by it. */
            }
            concern problemStatement {
                subject :> buildingFacadeMaintenance;
                doc 
                /* Glass façades of mid- and high-rise buildings must be cleaned several
                 * times a year. Today this is done by workers on rope access or in
                 * building maintenance units (gondolas). This is one of the most
                 * hazardous jobs in building maintenance, because falls from height are
                 * a leading cause of fatal work accidents. It is also slow: one high-rise
                 * façade ties up a crew for days to weeks. It is costly, it depends on
                 * wind and weather, and it disturbs occupants and blocks pedestrian areas
                 * below. Buildings without a permanent gondola need scaffolding or lifts
                 * brought in each time. Building owners and facility managers need façade
                 * glass cleaned to a consistent standard, more often and at lower cost,
                 * without putting people at height and without exposing the public below
                 * to falling objects or runoff. */
            }
            package 'Base Architecture' {
                part def <'WCD-BA'> 'WindowCleaningDrone-BA' {
                    doc 
                    /* Base architecture: a tethered cleaning drone, supplied with purified
                     * water and power from a station on the roof, optionally fed by a
                     * station on the ground, and commanded from an operator console. */
                    part cleaningDrone : 'Parts Definitions'::CleaningDrone;
                    part tether : 'Parts Definitions'::Tether;
                    part roofStation : 'Parts Definitions'::RoofStation [1];
                    part groundStation : 'Parts Definitions'::GroundStation [0..1];
                    part operatorConsole : 'Parts Definitions'::OperatorConsole;
                }
                
                package 'Parts Definitions' {
                    part def CleaningDrone {
                        doc 
                        /* The flying unit that holds position in front of the façade and
                         * cleans the glass. */
                        part airframe : Airframe;
                        part propulsionUnits : PropulsionUnit [4..*];
                        part flightController : FlightController;
                        part facadeSensing : FacadeSensing;
                        part cleaningHead : CleaningHead;
                        part backupBattery : BackupBattery;
                    }
                    part def Airframe {
                        doc 
                        /* Carries all drone building blocks and the tether attachment;
                         * includes guards around the propellers. */
                    }
                    part def PropulsionUnit {
                        doc /* One motor with its propeller; produces lift and thrust. */
                    }
                    part def FlightController {
                        doc 
                        /* Stabilizes the drone and keeps it on its cleaning path in front of
                         * the façade. */
                    }
                    part def FacadeSensing {
                        doc 
                        /* Senses the distance to the glass and the drone's position on the
                         * façade, and detects opened windows and people in front of the
                         * drone. */
                    }
                    part def CleaningHead {
                        doc /* Sprays purified water onto the glass and scrubs it with a brush. */
                    }
                    part def BackupBattery {
                        doc 
                        /* Stores enough energy for a controlled landing when the tether
                         * supply fails; is charged from the tether in flight. */
                    }
                    part def Tether {
                        doc 
                        /* The single line between roof station and drone; carries purified
                         * water, electrical energy and data. */
                    }
                    part def RoofStation {
                        doc 
                        /* Everything that must be above the drone: it holds the tether's
                         * weight, pays it out and in, and feeds water and power into it. */
                        part tetherWinch : TetherWinch;
                        part roofAnchor : RoofAnchor;
                        part bufferTank : BufferTank;
                        part powerDistribution : PowerDistribution;
                    }
                    part def TetherWinch {
                        doc /* Pays the tether out and reels it in as the drone moves. */
                    }
                    part def RoofAnchor {
                        doc 
                        /* Fixes the roof station to the building and carries the tether's
                         * weight. */
                    }
                    part def BufferTank {
                        doc 
                        /* Holds a reserve of purified water above the drone, so that gravity
                         * supplies the pressure. */
                    }
                    part def PowerDistribution {
                        doc /* Feeds electrical energy into the tether. */
                    }
                    part def GroundStation {
                        doc 
                        /* The heavy supply equipment, placed where mains water, a drain and
                         * vehicle access are: it treats the water and supplies water and power
                         * up to the roof station. Only needed where the roof has no treated
                         * water and power of its own. */
                        part waterTreatment : WaterTreatment;
                        part supplyTank : SupplyTank;
                        part waterPump : WaterPump;
                        part powerSupply : PowerSupply;
                    }
                    part def WaterTreatment {
                        doc 
                        /* Purifies mains water so the glass dries without spots and without
                         * detergent. */
                    }
                    part def SupplyTank {
                        doc /* Stores purified water at ground level. */
                    }
                    part def WaterPump {
                        doc /* Lifts purified water up to the roof station. */
                    }
                    part def PowerSupply {
                        doc /* Provides electrical energy from the mains or a generator. */
                    }
                    part def OperatorConsole {
                        doc 
                        /* The tablet or remote with which the operator plans, starts,
                         * supervises and stops a cleaning job. */
                    }
                }
            }
            
        }
    }
}
package SYSMODLibrary {
    enum def LevelKind :> ScalarValues::Integer {
        high = 3;
        medium = 2;
        low = 1;
    }
    enum def StakeholderCategoryKind {
        user;
        requirementOwner;
        expert;
        other;
    }
    part def Stakeholder {
        attribute risk : LevelKind;
        attribute effort : LevelKind;
        attribute priority = risk * effort;
        attribute category : StakeholderCategoryKind;
    }
}
